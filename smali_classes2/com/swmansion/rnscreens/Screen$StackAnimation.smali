.class public final enum Lcom/swmansion/rnscreens/Screen$StackAnimation;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StackAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/Screen$StackAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field public static final enum SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 365
    new-instance v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 366
    new-instance v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 367
    new-instance v3, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v5, "FADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 368
    new-instance v5, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v7, "SLIDE_FROM_BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 369
    new-instance v7, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v9, "SLIDE_FROM_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 370
    new-instance v9, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v11, "SLIDE_FROM_LEFT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 371
    new-instance v11, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v13, "FADE_FROM_BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/swmansion/rnscreens/Screen$StackAnimation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/swmansion/rnscreens/Screen$StackAnimation;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 364
    sput-object v13, Lcom/swmansion/rnscreens/Screen$StackAnimation;->$VALUES:[Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 364
    const-class v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 364
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->$VALUES:[Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/Screen$StackAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object v0
.end method
