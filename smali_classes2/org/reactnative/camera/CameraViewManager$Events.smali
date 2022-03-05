.class public final enum Lorg/reactnative/camera/CameraViewManager$Events;
.super Ljava/lang/Enum;
.source "CameraViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactnative/camera/CameraViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reactnative/camera/CameraViewManager$Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

.field public static final enum EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v1, "EVENT_CAMERA_READY"

    const/4 v2, 0x0

    const-string v3, "onCameraReady"

    invoke-direct {v0, v1, v2, v3}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_CAMERA_READY:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 20
    new-instance v1, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v3, "EVENT_ON_MOUNT_ERROR"

    const/4 v4, 0x1

    const-string v5, "onMountError"

    invoke-direct {v1, v3, v4, v5}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_MOUNT_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 21
    new-instance v3, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v5, "EVENT_ON_BAR_CODE_READ"

    const/4 v6, 0x2

    const-string v7, "onBarCodeRead"

    invoke-direct {v3, v5, v6, v7}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 22
    new-instance v5, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v7, "EVENT_ON_FACES_DETECTED"

    const/4 v8, 0x3

    const-string v9, "onFacesDetected"

    invoke-direct {v5, v7, v8, v9}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 23
    new-instance v7, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v9, "EVENT_ON_BARCODES_DETECTED"

    const/4 v10, 0x4

    const-string v11, "onGoogleVisionBarcodesDetected"

    invoke-direct {v7, v9, v10, v11}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODES_DETECTED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 24
    new-instance v9, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v11, "EVENT_ON_FACE_DETECTION_ERROR"

    const/4 v12, 0x5

    const-string v13, "onFaceDetectionError"

    invoke-direct {v9, v11, v12, v13}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_FACE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 25
    new-instance v11, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v13, "EVENT_ON_BARCODE_DETECTION_ERROR"

    const/4 v14, 0x6

    const-string v15, "onGoogleVisionBarcodeDetectionError"

    invoke-direct {v11, v13, v14, v15}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BARCODE_DETECTION_ERROR:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 26
    new-instance v13, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_TEXT_RECOGNIZED"

    const/4 v14, 0x7

    const-string v12, "onTextRecognized"

    invoke-direct {v13, v15, v14, v12}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TEXT_RECOGNIZED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 27
    new-instance v12, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_PICTURE_TAKEN"

    const/16 v14, 0x8

    const-string v10, "onPictureTaken"

    invoke-direct {v12, v15, v14, v10}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_TAKEN:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 28
    new-instance v10, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_PICTURE_SAVED"

    const/16 v14, 0x9

    const-string v8, "onPictureSaved"

    invoke-direct {v10, v15, v14, v8}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_PICTURE_SAVED:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 29
    new-instance v8, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_RECORDING_START"

    const/16 v14, 0xa

    const-string v6, "onRecordingStart"

    invoke-direct {v8, v15, v14, v6}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_START:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 30
    new-instance v6, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_RECORDING_END"

    const/16 v14, 0xb

    const-string v4, "onRecordingEnd"

    invoke-direct {v6, v15, v14, v4}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_RECORDING_END:Lorg/reactnative/camera/CameraViewManager$Events;

    .line 31
    new-instance v4, Lorg/reactnative/camera/CameraViewManager$Events;

    const-string v15, "EVENT_ON_TOUCH"

    const/16 v14, 0xc

    const-string v2, "onTouch"

    invoke-direct {v4, v15, v14, v2}, Lorg/reactnative/camera/CameraViewManager$Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_TOUCH:Lorg/reactnative/camera/CameraViewManager$Events;

    const/16 v2, 0xd

    new-array v2, v2, [Lorg/reactnative/camera/CameraViewManager$Events;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    .line 18
    sput-object v2, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    const-class v0, Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reactnative/camera/CameraViewManager$Events;

    return-object p0
.end method

.method public static values()[Lorg/reactnative/camera/CameraViewManager$Events;
    .locals 1

    .line 18
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->$VALUES:[Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, [Lorg/reactnative/camera/CameraViewManager$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reactnative/camera/CameraViewManager$Events;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/reactnative/camera/CameraViewManager$Events;->mName:Ljava/lang/String;

    return-object v0
.end method
