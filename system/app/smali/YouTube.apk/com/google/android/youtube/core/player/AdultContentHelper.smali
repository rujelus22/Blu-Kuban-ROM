.class public final Lcom/google/android/youtube/core/player/AdultContentHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/core/async/av;
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/b;

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/client/ad;

.field private final f:Landroid/app/Dialog;

.field private final g:Landroid/app/Dialog;

.field private h:Landroid/widget/CheckBox;

.field private i:Lcom/google/android/youtube/core/async/h;

.field private j:Lcom/google/android/youtube/core/async/i;

.field private k:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/player/b;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->b:Landroid/app/Activity;

    .line 81
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    .line 82
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->c:Landroid/content/SharedPreferences;

    .line 83
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 84
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->e:Lcom/google/android/youtube/core/client/ad;

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->I()Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0048

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->f:Landroid/app/Dialog;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->h:Landroid/widget/CheckBox;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    .line 93
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_c

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 192
    return-void

    .line 191
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 124
    invoke-static {p0}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/i;

    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->j:Lcom/google/android/youtube/core/async/i;

    .line 126
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->b:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/b;->a(Ljava/lang/Exception;)V

    .line 135
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/player/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasLegalAge()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->c:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->d()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_13

    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->d()V

    goto :goto_13
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 98
    new-instance v0, Lcom/google/android/youtube/core/async/h;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/h;-><init>(Lcom/google/android/youtube/core/async/av;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->i:Lcom/google/android/youtube/core/async/h;

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->i:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 104
    :goto_1b
    return-void

    .line 101
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AdultContentHelper;->d()V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1b
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->i:Lcom/google/android/youtube/core/async/h;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->i:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/h;->b()V

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->j:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->j:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 117
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    return-void
.end method

.method public final d_()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/b;->a(Ljava/lang/Exception;)V

    .line 131
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/b;->a(Ljava/lang/Exception;)V

    .line 173
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_5a

    .line 169
    :cond_3
    :goto_3
    return-void

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->g:Landroid/app/Dialog;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 158
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->c:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "adult_content_confirmations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    :cond_4d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/b;->d()V

    goto :goto_3

    .line 166
    :pswitch_53
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AdultContentHelper;->a:Lcom/google/android/youtube/core/player/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/b;->a(Ljava/lang/Exception;)V

    goto :goto_3

    .line 153
    :pswitch_data_5a
    .packed-switch -0x2
        :pswitch_53
        :pswitch_4
    .end packed-switch
.end method
