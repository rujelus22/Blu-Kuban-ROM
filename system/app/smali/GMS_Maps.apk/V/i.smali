.class final Lv/i;
.super Lv/e;
.source "SourceFile"


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lv/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()[S
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x80a

    new-array v0, v0, [S

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lv/i;->a()[S

    move-result-object v0

    return-object v0
.end method
