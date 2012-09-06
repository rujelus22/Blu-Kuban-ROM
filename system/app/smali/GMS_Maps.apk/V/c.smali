.class final Lv/c;
.super Lv/e;
.source "SourceFile"


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lv/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[B
    .registers 2

    .prologue
    .line 31
    const/16 v0, 0x100a

    new-array v0, v0, [B

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lv/c;->a()[B

    move-result-object v0

    return-object v0
.end method
