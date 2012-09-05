.class public final Lbo;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTicker:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lbo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lbo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTicker()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lbo;->mTicker:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lbo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lbo;->mAction:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lbo;->mText:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public final setTicker(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lbo;->mTicker:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lbo;->mTitle:Ljava/lang/String;

    .line 18
    return-void
.end method
