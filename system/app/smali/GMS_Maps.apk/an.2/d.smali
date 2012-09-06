.class LaN/d;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt/c;

.field final synthetic b:LaN/b;


# direct methods
.method constructor <init>(LaN/b;Lt/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, LaN/d;->b:LaN/b;

    iput-object p2, p0, LaN/d;->a:Lt/c;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, LaN/d;->a:Lt/c;

    invoke-virtual {v0}, Lt/c;->start()V

    .line 277
    return-void
.end method
