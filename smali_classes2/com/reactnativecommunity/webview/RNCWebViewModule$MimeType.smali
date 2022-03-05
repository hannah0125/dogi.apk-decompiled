.class final enum Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;
.super Ljava/lang/Enum;
.source "RNCWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/webview/RNCWebViewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

.field public static final enum DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

.field public static final enum IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

.field public static final enum VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 87
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "*/*"

    invoke-direct {v0, v1, v2, v3}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    .line 88
    new-instance v1, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    const-string v5, "image"

    invoke-direct {v1, v3, v4, v5}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    .line 89
    new-instance v3, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    const-string v7, "video"

    invoke-direct {v3, v5, v6, v7}, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 86
    sput-object v5, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->$VALUES:[Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

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

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;
    .locals 1

    .line 86
    const-class v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    return-object p0
.end method

.method public static values()[Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;
    .locals 1

    .line 86
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->$VALUES:[Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    invoke-virtual {v0}, [Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reactnativecommunity/webview/RNCWebViewModule$MimeType;

    return-object v0
.end method
