.class Lcom/swmansion/rnscreens/ScreenStackFragment$1;
.super Ljava/lang/Object;
.source "ScreenStackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dispatchOnWillAppear()V

    .line 112
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dispatchOnAppear()V

    return-void
.end method
