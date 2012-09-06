.class final Lcom/anddoes/launcher/bu;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bu;->a:Lcom/anddoes/launcher/DragLayer;

    .line 603
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/anddoes/launcher/bu;->a:Lcom/anddoes/launcher/DragLayer;

    invoke-static {v0}, Lcom/anddoes/launcher/DragLayer;->c(Lcom/anddoes/launcher/DragLayer;)V

    .line 606
    return-void
.end method
