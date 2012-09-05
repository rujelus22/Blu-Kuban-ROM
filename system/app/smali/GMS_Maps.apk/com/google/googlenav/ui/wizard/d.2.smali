.class Lcom/google/googlenav/ui/wizard/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestView;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/d;->b:Lcom/google/googlenav/ui/wizard/a;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/d;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/d;->b:Lcom/google/googlenav/ui/wizard/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/d;->a:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/a;->a(Lcom/google/googlenav/ui/wizard/a;Ljava/lang/String;)V

    return-void
.end method
