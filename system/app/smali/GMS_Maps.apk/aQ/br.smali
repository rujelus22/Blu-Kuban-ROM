.class LaQ/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/bq;


# direct methods
.method constructor <init>(LaQ/bq;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, LaQ/br;->a:LaQ/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/ai;->a()Lcom/google/googlenav/ui/view/dialog/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ai;->show()V

    .line 143
    return-void
.end method
