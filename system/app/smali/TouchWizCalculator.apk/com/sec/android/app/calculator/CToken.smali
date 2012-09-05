.class Lcom/sec/android/app/calculator/CToken;
.super Ljava/lang/Object;
.source "Logic.java"


# instance fields
.field private tokenId:Lcom/sec/android/app/calculator/token_type;

.field private tokenValue:D


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget-object v0, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    iput-object v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    .line 201
    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/calculator/token_type;D)V
    .registers 4
    .parameter "tt"
    .parameter "tv"

    .prologue
    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    .line 205
    iput-wide p2, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    .line 206
    return-void
.end method


# virtual methods
.method getTokenType()Lcom/sec/android/app/calculator/token_type;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    return-object v0
.end method

.method getTokenValue()D
    .registers 3

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    return-wide v0
.end method

.method setTokenType(Lcom/sec/android/app/calculator/token_type;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenId:Lcom/sec/android/app/calculator/token_type;

    .line 210
    return-void
.end method

.method setTokenValue(D)V
    .registers 3
    .parameter "d"

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/sec/android/app/calculator/CToken;->tokenValue:D

    .line 214
    return-void
.end method
