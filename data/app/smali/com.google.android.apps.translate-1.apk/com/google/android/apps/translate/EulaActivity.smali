.class public Lcom/google/android/apps/translate/EulaActivity;
.super Lcom/google/android/apps/translate/TranslateBaseActivity;
.source "EulaActivity.java"


# static fields
.field private static final BULLET_MARK:Ljava/lang/String; = "\u2022"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/TranslateBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v4, Lcom/google/android/apps/translate/R$layout;->eula:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->setContentView(I)V

    .line 24
    sget v4, Lcom/google/android/apps/translate/R$id;->welcome_text:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 25
    .local v3, welcomeText:Landroid/widget/TextView;
    sget v4, Lcom/google/android/apps/translate/R$string;->welcome_text:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "\u2022"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "\u2022"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "\u2022"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "\u2022"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget v4, Lcom/google/android/apps/translate/R$id;->tos_link:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 30
    .local v2, tosLink:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 32
    sget v4, Lcom/google/android/apps/translate/R$id;->btn_accept:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, accept:Landroid/widget/Button;
    new-instance v4, Lcom/google/android/apps/translate/EulaActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/translate/EulaActivity$1;-><init>(Lcom/google/android/apps/translate/EulaActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v4, Lcom/google/android/apps/translate/R$id;->btn_decline:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, decline:Landroid/widget/Button;
    new-instance v4, Lcom/google/android/apps/translate/EulaActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/translate/EulaActivity$2;-><init>(Lcom/google/android/apps/translate/EulaActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
