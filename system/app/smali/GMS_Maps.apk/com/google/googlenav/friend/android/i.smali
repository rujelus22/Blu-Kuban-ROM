.class Lcom/google/googlenav/friend/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/googlenav/friend/android/i;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 286
    iget-object v0, p0, Lcom/google/googlenav/friend/android/i;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Lcom/google/googlenav/friend/android/InviteActivity;)V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
