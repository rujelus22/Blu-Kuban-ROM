.class Lcom/google/googlenav/ui/wizard/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/c;->b:Lcom/google/googlenav/ui/wizard/a;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/c;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x6

    if-ne p2, v0, :cond_10

    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/c;->b:Lcom/google/googlenav/ui/wizard/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/c;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/a;->a(Lcom/google/googlenav/ui/wizard/a;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
