.class public final Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/async/l;
.implements Lcom/google/android/youtube/core/player/c;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final d:Lcom/google/android/youtube/core/b/ae;

.field private final e:Landroid/app/Dialog;

.field private final f:Landroid/app/Dialog;

.field private g:Landroid/widget/CheckBox;

.field private h:Lcom/google/android/youtube/core/player/d;

.field private i:Lcom/google/android/youtube/core/async/m;

.field private j:Lcom/google/android/youtube/core/async/n;

.field private k:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->a:Landroid/app/Activity;

    .line 76
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->b:Landroid/content/SharedPreferences;

    .line 77
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 78
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->d:Lcom/google/android/youtube/core/b/ae;

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0055

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->e:Landroid/app/Dialog;

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->g:Landroid/widget/CheckBox;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    .line 85
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_c

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 200
    return-void

    .line 199
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 118
    invoke-static {p0}, Lcom/google/android/youtube/core/async/n;->a(Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/n;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->j:Lcom/google/android/youtube/core/async/n;

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->d:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 121
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/d;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    new-instance v0, Lcom/google/android/youtube/core/async/m;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/m;-><init>(Lcom/google/android/youtube/core/async/bc;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->i:Lcom/google/android/youtube/core/async/m;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->c:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->i:Lcom/google/android/youtube/core/async/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 97
    :goto_23
    return-void

    .line 94
    :cond_24
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->c()V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_23
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/d;->a(Ljava/lang/Exception;)V

    .line 133
    :cond_9
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/player/d;->a(Ljava/lang/Exception;)V

    :cond_9
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasLegalAge()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->b:Landroid/content/SharedPreferences;

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

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_13

    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/d;->e()V

    goto :goto_13
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->i:Lcom/google/android/youtube/core/async/m;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->i:Lcom/google/android/youtube/core/async/m;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/m;->b()V

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->j:Lcom/google/android/youtube/core/async/n;

    if-eqz v0, :cond_12

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->j:Lcom/google/android/youtube/core/async/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/n;->a()V

    .line 110
    :cond_12
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    .line 113
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/d;->l()V

    .line 127
    :cond_9
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/d;->l()V

    .line 181
    :cond_9
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 155
    packed-switch p2, :pswitch_data_62

    .line 175
    :cond_3
    :goto_3
    return-void

    .line 157
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->f:Landroid/app/Dialog;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 160
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->k:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->b:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->b:Landroid/content/SharedPreferences;

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

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 163
    :cond_4d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/d;->e()V

    goto :goto_3

    .line 170
    :pswitch_57
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultAdultContentHelper;->h:Lcom/google/android/youtube/core/player/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/d;->l()V

    goto :goto_3

    .line 155
    nop

    :pswitch_data_62
    .packed-switch -0x2
        :pswitch_57
        :pswitch_4
    .end packed-switch
.end method
