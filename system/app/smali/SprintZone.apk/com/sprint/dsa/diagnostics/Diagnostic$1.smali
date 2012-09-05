.class Lcom/sprint/dsa/diagnostics/Diagnostic$1;
.super Ljava/lang/Object;
.source "Diagnostic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/diagnostics/Diagnostic;->startProgressAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/Diagnostic;

.field private final synthetic val$animation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/diagnostics/Diagnostic;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/Diagnostic$1;->this$0:Lcom/sprint/dsa/diagnostics/Diagnostic;

    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/Diagnostic$1;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/Diagnostic$1;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 207
    return-void
.end method
