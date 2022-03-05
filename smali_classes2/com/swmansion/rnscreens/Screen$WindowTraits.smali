.class public final enum Lcom/swmansion/rnscreens/Screen$WindowTraits;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowTraits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/Screen$WindowTraits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum ANIMATED:Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum COLOR:Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum HIDDEN:Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum ORIENTATION:Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum STYLE:Lcom/swmansion/rnscreens/Screen$WindowTraits;

.field public static final enum TRANSLUCENT:Lcom/swmansion/rnscreens/Screen$WindowTraits;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 386
    new-instance v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v1, "ORIENTATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ORIENTATION:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 387
    new-instance v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v3, "COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->COLOR:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 388
    new-instance v3, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v5, "STYLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/rnscreens/Screen$WindowTraits;->STYLE:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 389
    new-instance v5, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v7, "TRANSLUCENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/rnscreens/Screen$WindowTraits;->TRANSLUCENT:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 390
    new-instance v7, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v9, "HIDDEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/swmansion/rnscreens/Screen$WindowTraits;->HIDDEN:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    .line 391
    new-instance v9, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const-string v11, "ANIMATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/swmansion/rnscreens/Screen$WindowTraits;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ANIMATED:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/swmansion/rnscreens/Screen$WindowTraits;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 385
    sput-object v11, Lcom/swmansion/rnscreens/Screen$WindowTraits;->$VALUES:[Lcom/swmansion/rnscreens/Screen$WindowTraits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/Screen$WindowTraits;
    .locals 1

    .line 385
    const-class v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/Screen$WindowTraits;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/Screen$WindowTraits;
    .locals 1

    .line 385
    sget-object v0, Lcom/swmansion/rnscreens/Screen$WindowTraits;->$VALUES:[Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/Screen$WindowTraits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/Screen$WindowTraits;

    return-object v0
.end method
