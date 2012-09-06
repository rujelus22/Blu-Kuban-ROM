.class LtC;
.super Ljava/lang/Object;
.source "ItemToUpload.java"

# interfaces
.implements LsY;


# instance fields
.field final synthetic a:LtB;


# direct methods
.method constructor <init>(LtB;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, LtC;->a:LtB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, LtC;->a:LtB;

    invoke-virtual {v0}, LtB;->b()Z

    move-result v0

    return v0
.end method
