.class LaF/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaF/c;


# direct methods
.method constructor <init>(LaF/c;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, LaF/j;->a:LaF/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, LaF/j;->a:LaF/c;

    invoke-static {v0}, LaF/c;->c(LaF/c;)V

    .line 369
    return-void
.end method
