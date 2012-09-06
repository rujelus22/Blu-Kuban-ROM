.class LBi;
.super Ljava/lang/Object;
.source "ParagraphSpanStyle.java"

# interfaces
.implements LEl;


# instance fields
.field final synthetic a:LBh;


# direct methods
.method constructor <init>(LBh;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, LBi;->a:LBh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, LBi;->a:LBh;

    iget-object v0, v0, LBh;->a:LBg;

    invoke-static {v0}, LBg;->b(LBg;)Z

    move-result v0

    return v0
.end method
