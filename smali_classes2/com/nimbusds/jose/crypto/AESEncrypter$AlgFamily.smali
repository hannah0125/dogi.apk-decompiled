.class final enum Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;
.super Ljava/lang/Enum;
.source "AESEncrypter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/crypto/AESEncrypter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlgFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

.field public static final enum AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

.field private static final synthetic ENUM$VALUES:[Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    const-string v1, "AESKW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    new-instance v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    const-string v3, "AESGCMKW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->AESGCMKW:Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 82
    sput-object v3, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->ENUM$VALUES:[Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;
    .locals 1

    .line 1
    const-class v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;
    .locals 4

    .line 1
    sget-object v0, Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;->ENUM$VALUES:[Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    array-length v1, v0

    new-array v2, v1, [Lcom/nimbusds/jose/crypto/AESEncrypter$AlgFamily;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
