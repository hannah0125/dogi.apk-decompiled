.class final Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_vision_text/zziz;",
        ">;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;

.field private static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zze:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;

    const-string v0, "modelInfo"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "initialDownloadConditions"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "updateDownloadConditions"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "isModelUpdateEnabled"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfz;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zziz;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p1, 0x0

    throw p1
.end method
