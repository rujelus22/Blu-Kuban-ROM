.class public Lcom/google/android/apps/reader/app/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 60
    :goto_7
    return-void

    .line 52
    :pswitch_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/WelcomeActivity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/WelcomeActivity;->finish()V

    goto :goto_7

    .line 56
    :pswitch_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/WelcomeActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/WelcomeActivity;->finish()V

    goto :goto_7

    .line 50
    :pswitch_data_18
    .packed-switch 0x1020019
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/WelcomeActivity;->setContentView(I)V

    .line 39
    const v1, 0x1020015

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, text2:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
