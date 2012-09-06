.class final Lcom/google/android/youtube/app/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/aa;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/aa;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/af;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const/16 v0, 0x54

    if-ne p2, v0, :cond_6

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
