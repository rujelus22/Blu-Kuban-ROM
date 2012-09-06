.class LaC/u;
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
    .line 77
    iput-object p1, p0, LaC/u;->a:LaC/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, LaC/u;->a:LaC/s;

    invoke-static {v0}, LaC/s;->a(LaC/s;)LaC/v;

    move-result-object v0

    invoke-interface {v0}, LaC/v;->H_()V

    .line 81
    return-void
.end method
