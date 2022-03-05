.class final Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
.super Ljava/lang/Object;
.source "ScreenStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DrawingOp"
.end annotation


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private child:Landroid/view/View;

.field private drawingTime:J

.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStack;


# direct methods
.method private constructor <init>(Lcom/swmansion/rnscreens/ScreenStack;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$1;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)Landroid/graphics/Canvas;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$300(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)Landroid/view/View;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->child:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)J
    .locals 2

    .line 478
    iget-wide v0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->drawingTime:J

    return-wide v0
.end method


# virtual methods
.method draw()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->this$0:Lcom/swmansion/rnscreens/ScreenStack;

    invoke-static {v0, p0}, Lcom/swmansion/rnscreens/ScreenStack;->access$600(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->canvas:Landroid/graphics/Canvas;

    .line 493
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->child:Landroid/view/View;

    const-wide/16 v0, 0x0

    .line 494
    iput-wide v0, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->drawingTime:J

    return-void
.end method

.method set(Landroid/graphics/Canvas;Landroid/view/View;J)Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->canvas:Landroid/graphics/Canvas;

    .line 485
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->child:Landroid/view/View;

    .line 486
    iput-wide p3, p0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->drawingTime:J

    return-object p0
.end method
