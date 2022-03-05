.class public final enum Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
.super Ljava/lang/Enum;
.source "ScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenLifecycleEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v1, "Appear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    .line 25
    new-instance v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v3, "WillAppear"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    .line 26
    new-instance v3, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v5, "Disappear"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    .line 27
    new-instance v5, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v7, "WillDisappear"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 23
    sput-object v7, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->$VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .locals 1

    .line 23
    const-class v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .locals 1

    .line 23
    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->$VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-virtual {v0}, [Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-object v0
.end method
