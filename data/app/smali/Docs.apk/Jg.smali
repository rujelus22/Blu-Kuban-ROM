.class LJg;
.super Ljava/lang/Object;
.source "HttpModule.java"

# interfaces
.implements LIF;


# instance fields
.field final synthetic a:LJf;


# direct methods
.method constructor <init>(LJf;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, LJg;->a:LJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, LJg;->a:LJf;

    invoke-static {v0}, LJf;->a(LJf;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
