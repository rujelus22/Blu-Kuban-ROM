.class public Lcom/sprint/dsa/dss/DsaDialogs;
.super Ljava/lang/Object;
.source "DsaDialogs.java"


# static fields
.field static final BACK_YES:I = 0x7

.field static final CLOSE:I = 0x2

.field static final DONE:I = 0x1

.field static final MAIN_MENU:I = 0x6

.field static final PRECLOSE:I = 0x3

.field static final RESUME:I = 0x4

.field static final RETRY:I = 0x8

.field static final SAVE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/sprint/dsa/dss/DsaDialogs$1;

    invoke-direct {v0}, Lcom/sprint/dsa/dss/DsaDialogs$1;-><init>()V

    sput-object v0, Lcom/sprint/dsa/dss/DsaDialogs;->mHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_b

    .line 133
    :goto_a
    return-void

    .line 132
    :cond_b
    const-string v2, "OK"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v7, v6

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_a
.end method

.method public static doneDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_11

    .line 166
    const-string v0, "SprintZone_DSA"

    const-string v1, "doneDialog:message too short"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_10
    return-void

    .line 170
    :cond_11
    const-string v2, "Done"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v7, v6

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_10
.end method

.method public static noBackDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 119
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_13

    .line 120
    :cond_c
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_13
    const-string v2, "OK"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v6, v5

    move v7, v5

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public static pauseDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_a

    .line 143
    :goto_9
    return-void

    .line 142
    :cond_a
    const-string v2, "Exit"

    const-string v3, "Auto-Resume"

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_9
.end method

.method public static popupDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "dsaClient"
    .parameter "msg"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_11

    .line 158
    const-string v0, "SprintZone_DSA"

    const-string v1, "yesBackDialog:message too short"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_10
    return-void

    .line 162
    :cond_11
    const-string v2, "Done"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_10
.end method

.method public static retryDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_a

    .line 138
    :goto_9
    return-void

    .line 137
    :cond_a
    const-string v2, "Exit"

    const-string v3, "Retry"

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_9
.end method

.method public static saveExitDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 12
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    .line 146
    const-string v9, "Would you like to save and exit, exit without saving or go to the main menu?"

    .line 147
    .local v9, localMsg:Ljava/lang/String;
    if-eqz p1, :cond_5

    move-object v9, p1

    .line 149
    :cond_5
    const-string v0, "Save"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_17

    const-string v0, "save"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_27

    .line 150
    :cond_17
    const-string v2, "Save"

    const-string v3, "Exit"

    const-string v4, "Main Menu"

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 154
    :goto_26
    return-void

    .line 152
    :cond_27
    const-string v2, "Exit"

    const-string v3, "Main Menu"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_26
.end method

.method public static threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14
    .parameter "dsaClient"
    .parameter "message"
    .parameter "button1"
    .parameter "button2"
    .parameter "button3"
    .parameter "what1"
    .parameter "what2"
    .parameter "what3"
    .parameter "title"

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, firstMsg:Landroid/os/Message;
    sget-object v4, Lcom/sprint/dsa/dss/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 88
    iput p5, v1, Landroid/os/Message;->what:I

    .line 89
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 92
    .local v2, secondMsg:Landroid/os/Message;
    sget-object v4, Lcom/sprint/dsa/dss/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 93
    iput p6, v2, Landroid/os/Message;->what:I

    .line 94
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 97
    .local v3, thirdMsg:Landroid/os/Message;
    sget-object v4, Lcom/sprint/dsa/dss/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 98
    iput p7, v3, Landroid/os/Message;->what:I

    .line 99
    iput-object p0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, ad:Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 105
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 106
    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 107
    invoke-virtual {v0, p4, v3}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 110
    if-eqz p8, :cond_49

    .line 111
    invoke-virtual {v0, p8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_49
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void
.end method

.method public static yesBackDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;)V
    .registers 11
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_b

    .line 128
    :goto_a
    return-void

    .line 127
    :cond_b
    const-string v2, "Yes"

    const-string v3, "No"

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/dss/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_a
.end method
