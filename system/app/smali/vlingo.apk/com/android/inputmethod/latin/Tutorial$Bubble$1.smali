.class Lcom/android/inputmethod/latin/Tutorial$Bubble$1;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Tutorial$Bubble;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Tutorial$Bubble;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;->this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "me"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/latin/Tutorial$Bubble$1;->this$1:Lcom/android/inputmethod/latin/Tutorial$Bubble;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Tutorial$Bubble;->this$0:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->next()Z

    .line 146
    const/4 v0, 0x1

    return v0
.end method
