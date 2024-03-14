// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint, unused_element
import 'dart:ffi' as ffi;

/// llama.cpp binding
class maid_llm {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  maid_llm(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  maid_llm.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int maid_llm_init(
    ffi.Pointer<gpt_c_params> c_params,
    ffi.Pointer<dart_logger> log_output,
  ) {
    return _maid_llm_init(
      c_params,
      log_output,
    );
  }

  late final _maid_llm_initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<gpt_c_params>,
              ffi.Pointer<dart_logger>)>>('maid_llm_init');
  late final _maid_llm_init = _maid_llm_initPtr.asFunction<
      int Function(ffi.Pointer<gpt_c_params>, ffi.Pointer<dart_logger>)>();

  int maid_llm_prompt(
    int msg_count,
    ffi.Pointer<ffi.Pointer<chat_message>> messages,
    ffi.Pointer<dart_output> output,
  ) {
    return _maid_llm_prompt(
      msg_count,
      messages,
      output,
    );
  }

  late final _maid_llm_promptPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Int, ffi.Pointer<ffi.Pointer<chat_message>>,
              ffi.Pointer<dart_output>)>>('maid_llm_prompt');
  late final _maid_llm_prompt = _maid_llm_promptPtr.asFunction<
      int Function(int, ffi.Pointer<ffi.Pointer<chat_message>>,
          ffi.Pointer<dart_output>)>();

  void maid_llm_stop() {
    return _maid_llm_stop();
  }

  late final _maid_llm_stopPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('maid_llm_stop');
  late final _maid_llm_stop = _maid_llm_stopPtr.asFunction<void Function()>();

  void maid_llm_cleanup() {
    return _maid_llm_cleanup();
  }

  late final _maid_llm_cleanupPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('maid_llm_cleanup');
  late final _maid_llm_cleanup =
      _maid_llm_cleanupPtr.asFunction<void Function()>();
}

abstract class chat_role {
  static const int ROLE_SYSTEM = 0;
  static const int ROLE_USER = 1;
  static const int ROLE_ASSISTANT = 2;
}

final class sampling_params extends ffi.Struct {
  @ffi.Int()
  external int n_prev;

  @ffi.Int()
  external int n_probs;

  @ffi.Int()
  external int min_keep;

  @ffi.Int()
  external int top_k;

  @ffi.Float()
  external double top_p;

  @ffi.Float()
  external double min_p;

  @ffi.Float()
  external double tfs_z;

  @ffi.Float()
  external double typical_p;

  @ffi.Float()
  external double temp;

  @ffi.Float()
  external double dynatemp_range;

  @ffi.Float()
  external double dynatemp_exponent;

  @ffi.Int()
  external int penalty_last_n;

  @ffi.Float()
  external double penalty_repeat;

  @ffi.Float()
  external double penalty_freq;

  @ffi.Float()
  external double penalty_present;

  @ffi.Int()
  external int mirostat;

  @ffi.Float()
  external double mirostat_tau;

  @ffi.Float()
  external double mirostat_eta;

  @ffi.Bool()
  external bool penalize_nl;

  external ffi.Pointer<ffi.Char> grammar;

  external ffi.Pointer<ffi.Char> cfg_negative_prompt;

  @ffi.Float()
  external double cfg_scale;
}

final class gpt_c_params extends ffi.Struct {
  @ffi.Int()
  external int seed;

  @ffi.Int()
  external int n_threads;

  @ffi.Int()
  external int n_threads_draft;

  @ffi.Int()
  external int n_threads_batch;

  @ffi.Int()
  external int n_threads_batch_draft;

  @ffi.Int()
  external int n_predict;

  @ffi.Int()
  external int n_ctx;

  @ffi.Int()
  external int n_batch;

  @ffi.Int()
  external int n_keep;

  @ffi.Int()
  external int n_draft;

  @ffi.Int()
  external int n_chunks;

  @ffi.Int()
  external int n_parallel;

  @ffi.Int()
  external int n_sequences;

  @ffi.Float()
  external double p_split;

  @ffi.Int()
  external int n_gpu_layers;

  @ffi.Int()
  external int n_gpu_layers_draft;

  @ffi.Char()
  external int split_mode;

  @ffi.Int()
  external int main_gpu;

  @ffi.Int()
  external int n_beams;

  @ffi.Int()
  external int grp_attn_n;

  @ffi.Int()
  external int grp_attn_w;

  @ffi.Int()
  external int n_print;

  @ffi.Float()
  external double rope_freq_base;

  @ffi.Float()
  external double rope_freq_scale;

  @ffi.Float()
  external double yarn_ext_factor;

  @ffi.Float()
  external double yarn_attn_factor;

  @ffi.Float()
  external double yarn_beta_fast;

  @ffi.Float()
  external double yarn_beta_slow;

  @ffi.Int()
  external int yarn_orig_ctx;

  @ffi.Float()
  external double defrag_thold;

  @ffi.Int()
  external int rope_scaling_type;

  @ffi.Char()
  external int numa;

  external sampling_params sparams;

  external ffi.Pointer<ffi.Char> model;

  external ffi.Pointer<ffi.Char> model_draft;

  external ffi.Pointer<ffi.Char> model_alias;

  external ffi.Pointer<ffi.Char> prompt;

  external ffi.Pointer<ffi.Char> prompt_file;

  external ffi.Pointer<ffi.Char> path_prompt_cache;

  external ffi.Pointer<ffi.Char> input_prefix;

  external ffi.Pointer<ffi.Char> input_suffix;

  external ffi.Pointer<ffi.Char> antiprompt;

  external ffi.Pointer<ffi.Char> logdir;

  external ffi.Pointer<ffi.Char> logits_file;

  external ffi.Pointer<ffi.Char> lora_base;

  @ffi.Int()
  external int ppl_stride;

  @ffi.Int()
  external int ppl_output_type;

  @ffi.Bool()
  external bool hellaswag;

  @ffi.UnsignedLong()
  external int hellaswag_tasks;

  @ffi.Bool()
  external bool winogrande;

  @ffi.UnsignedLong()
  external int winogrande_tasks;

  @ffi.Bool()
  external bool multiple_choice;

  @ffi.UnsignedLong()
  external int multiple_choice_tasks;

  @ffi.Bool()
  external bool kl_divergence;

  @ffi.Bool()
  external bool random_prompt;

  @ffi.Bool()
  external bool use_color;

  @ffi.Bool()
  external bool interactive;

  @ffi.Bool()
  external bool chatml;

  @ffi.Bool()
  external bool prompt_cache_all;

  @ffi.Bool()
  external bool prompt_cache_ro;

  @ffi.Bool()
  external bool embedding;

  @ffi.Bool()
  external bool escape;

  @ffi.Bool()
  external bool interactive_first;

  @ffi.Bool()
  external bool multiline_input;

  @ffi.Bool()
  external bool simple_io;

  @ffi.Bool()
  external bool cont_batching;

  @ffi.Bool()
  external bool input_prefix_bos;

  @ffi.Bool()
  external bool ignore_eos;

  @ffi.Bool()
  external bool instruct;

  @ffi.Bool()
  external bool logits_all;

  @ffi.Bool()
  external bool use_mmap;

  @ffi.Bool()
  external bool use_mlock;

  @ffi.Bool()
  external bool verbose_prompt;

  @ffi.Bool()
  external bool display_prompt;

  @ffi.Bool()
  external bool infill;

  @ffi.Bool()
  external bool dump_kv_cache;

  @ffi.Bool()
  external bool no_kv_offload;

  external ffi.Pointer<ffi.Char> cache_type_k;

  external ffi.Pointer<ffi.Char> cache_type_v;

  external ffi.Pointer<ffi.Char> mmproj;

  external ffi.Pointer<ffi.Char> image;
}

final class chat_message extends ffi.Struct {
  @ffi.Int32()
  external int role;

  external ffi.Pointer<ffi.Char> content;
}

typedef dart_logger
    = ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char> buffer)>;
typedef dart_output = ffi.NativeFunction<
    ffi.Void Function(ffi.Pointer<ffi.Char> buffer, ffi.Bool stop)>;

const int __bool_true_false_are_defined = 1;

const int true1 = 1;

const int false1 = 0;
