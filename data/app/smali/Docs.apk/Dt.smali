.class LDt;
.super Ljava/lang/Object;
.source "AccessibilityHoverHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LDr;

.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field final synthetic b:I


# direct methods
.method constructor <init>(LDr;Lcom/google/android/apps/docs/editors/text/TextView;IILandroid/view/accessibility/AccessibilityManager;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, LDt;->a:LDr;

    iput-object p2, p0, LDt;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iput p3, p0, LDt;->a:I

    iput p4, p0, LDt;->b:I

    iput-object p5, p0, LDt;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 230
    iget-object v0, p0, LDt;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 267
    :cond_8
    :goto_8
    return-void

    .line 233
    :cond_9
    iget-object v0, p0, LDt;->a:LDr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LDr;->a(LDr;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 235
    iget-object v0, p0, LDt;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 236
    iget-object v0, p0, LDt;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget v2, p0, LDt;->a:I

    iget v3, p0, LDt;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    .line 237
    iget-object v2, p0, LDt;->a:LDr;

    invoke-static {v2}, LDr;->b(LDr;)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 241
    invoke-virtual {v1, v0}, LCl;->h(I)I

    move-result v2

    .line 242
    iget-object v3, p0, LDt;->a:LDr;

    invoke-static {v3, v0}, LDr;->d(LDr;I)I

    .line 243
    invoke-virtual {v1}, LCl;->a()Ljava/lang/CharSequence;

    move-result-object v3

    .line 244
    iget-object v4, p0, LDt;->a:LDr;

    invoke-static {v4}, LDr;->a(LDr;)LEe;

    move-result-object v4

    invoke-virtual {v4, v3}, LEe;->a(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, p0, LDt;->a:LDr;

    invoke-static {v4}, LDr;->a(LDr;)LEe;

    move-result-object v4

    invoke-virtual {v4, v0}, LEe;->a(I)I

    move-result v0

    .line 246
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4b

    .line 247
    const/4 v0, 0x0

    .line 250
    :cond_4b
    iget-object v4, p0, LDt;->a:LDr;

    invoke-static {v4}, LDr;->c(LDr;)I

    move-result v4

    if-eq v2, v4, :cond_84

    .line 251
    invoke-virtual {v1, v2}, LCl;->c(I)I

    move-result v4

    .line 252
    invoke-virtual {v1, v2}, LCl;->i(I)I

    move-result v1

    .line 253
    iget-object v5, p0, LDt;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v5, v3, v4, v1}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    .line 254
    iget-object v1, p0, LDt;->a:LDr;

    invoke-static {v1, v2}, LDr;->e(LDr;I)I

    .line 255
    iget-object v1, p0, LDt;->a:LDr;

    invoke-static {v1, v0}, LDr;->f(LDr;I)I

    .line 256
    iget-object v0, p0, LDt;->a:LDr;

    invoke-static {v0, v4}, LDr;->c(LDr;I)I

    .line 258
    iget-object v0, p0, LDt;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 259
    iget-object v0, p0, LDt;->a:LDr;

    invoke-static {v0}, LDr;->a(LDr;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_8

    .line 262
    :cond_84
    iget-object v1, p0, LDt;->a:LDr;

    invoke-static {v1}, LDr;->d(LDr;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 263
    iget-object v1, p0, LDt;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v2, p0, LDt;->a:LDr;

    invoke-static {v2}, LDr;->a(LDr;)LEe;

    move-result-object v2

    invoke-static {v1, v3, v2, v0}, LCL;->a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V

    .line 264
    iget-object v1, p0, LDt;->a:LDr;

    invoke-static {v1, v0}, LDr;->f(LDr;I)I

    .line 265
    iget-object v1, p0, LDt;->a:LDr;

    invoke-static {v1, v0}, LDr;->c(LDr;I)I

    goto/16 :goto_8
.end method
