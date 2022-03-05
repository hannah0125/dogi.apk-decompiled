.class public final enum Lcom/dylanvann/fastimage/FastImageCacheControl;
.super Ljava/lang/Enum;
.source "FastImageCacheControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dylanvann/fastimage/FastImageCacheControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dylanvann/fastimage/FastImageCacheControl;

.field public static final enum CACHE_ONLY:Lcom/dylanvann/fastimage/FastImageCacheControl;

.field public static final enum IMMUTABLE:Lcom/dylanvann/fastimage/FastImageCacheControl;

.field public static final enum WEB:Lcom/dylanvann/fastimage/FastImageCacheControl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/dylanvann/fastimage/FastImageCacheControl;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dylanvann/fastimage/FastImageCacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dylanvann/fastimage/FastImageCacheControl;->IMMUTABLE:Lcom/dylanvann/fastimage/FastImageCacheControl;

    .line 5
    new-instance v1, Lcom/dylanvann/fastimage/FastImageCacheControl;

    const-string v3, "WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dylanvann/fastimage/FastImageCacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dylanvann/fastimage/FastImageCacheControl;->WEB:Lcom/dylanvann/fastimage/FastImageCacheControl;

    .line 6
    new-instance v3, Lcom/dylanvann/fastimage/FastImageCacheControl;

    const-string v5, "CACHE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dylanvann/fastimage/FastImageCacheControl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dylanvann/fastimage/FastImageCacheControl;->CACHE_ONLY:Lcom/dylanvann/fastimage/FastImageCacheControl;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dylanvann/fastimage/FastImageCacheControl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/dylanvann/fastimage/FastImageCacheControl;->$VALUES:[Lcom/dylanvann/fastimage/FastImageCacheControl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dylanvann/fastimage/FastImageCacheControl;
    .locals 1

    .line 3
    const-class v0, Lcom/dylanvann/fastimage/FastImageCacheControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dylanvann/fastimage/FastImageCacheControl;

    return-object p0
.end method

.method public static values()[Lcom/dylanvann/fastimage/FastImageCacheControl;
    .locals 1

    .line 3
    sget-object v0, Lcom/dylanvann/fastimage/FastImageCacheControl;->$VALUES:[Lcom/dylanvann/fastimage/FastImageCacheControl;

    invoke-virtual {v0}, [Lcom/dylanvann/fastimage/FastImageCacheControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dylanvann/fastimage/FastImageCacheControl;

    return-object v0
.end method
