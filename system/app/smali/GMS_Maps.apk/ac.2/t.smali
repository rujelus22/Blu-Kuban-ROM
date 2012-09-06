.class LaC/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaC/s;


# direct methods
.method constructor <init>(LaC/s;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, LaC/t;->a:LaC/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, LaC/t;->a:LaC/s;

    invoke-static {v0}, LaC/s;->a(LaC/s;)LaC/v;

    move-result-object v0

    invoke-interface {v0}, LaC/v;->f()V

    .line 74
    return-void
.end method
