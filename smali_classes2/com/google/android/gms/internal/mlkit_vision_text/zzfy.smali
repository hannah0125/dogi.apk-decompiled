.class final Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_vision_text/zzix;",
        ">;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;

.field private static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzi:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzj:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;

    const-string v0, "name"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "version"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "source"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "uri"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "hash"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "modelType"

    .line 26
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "size"

    .line 31
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 32
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/4 v2, 0x7

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "hasLabelMap"

    .line 36
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "isManifestModel"

    .line 41
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    .line 42
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;-><init>()V

    const/16 v2, 0x9

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text/zzcq;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzfy;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

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
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzix;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p1, 0x0

    throw p1
.end method