.class public Lcom/vlingo/client/safereader/email/EmailAccount;
.super Ljava/lang/Object;
.source "EmailAccount.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final COLUMN_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field static final COLUMN_EMAIL_ADDRESS:Ljava/lang/String; = "email_address"

.field static final COLUMN_ENABLED:Ljava/lang/String; = "enabled"

.field static final COLUMN_ID:Ljava/lang/String; = "_ID"

.field static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field static final COLUMN_PORT:Ljava/lang/String; = "port"

.field static final COLUMN_SECURITY_TYPE:Ljava/lang/String; = "security_type"

.field static final COLUMN_SERVER:Ljava/lang/String; = "server"

.field static final COLUMN_SERVER_TYPE:Ljava/lang/String; = "server_type"

.field static final COLUMN_USERNAME:Ljava/lang/String; = "username"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "email_address DESC"

.field public static final EMAIL_ACCOUNT_TYPE_AOL:I = 0x3

.field public static final EMAIL_ACCOUNT_TYPE_GMAIL:I = 0x0

.field public static final EMAIL_ACCOUNT_TYPE_HOTMAIL:I = 0x1

.field public static final EMAIL_ACCOUNT_TYPE_OTHER:I = 0x4

.field public static final EMAIL_ACCOUNT_TYPE_YAHOO:I = 0x2

.field public static final SECURITY_TYPE_NONE:I = 0x0

.field public static final SECURITY_TYPE_SSL:I = 0x1

.field public static final SECURITY_TYPE_TLS:I = 0x2

.field public static final SERVER_TYPE_IMAP:I = 0x0

.field public static final SERVER_TYPE_POP3:I = 0x1


# instance fields
.field public accountType:I

.field public emailAddress:Ljava/lang/String;

.field public enabled:I

.field public id:I

.field public password:Ljava/lang/String;

.field public port:I

.field public securityType:I

.field public server:Ljava/lang/String;

.field public serverType:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    .line 61
    return-void
.end method

.method public static getImageResourceId(I)I
    .registers 2
    .parameter "emailAccountType"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_18

    .line 86
    const v0, 0x7f020087

    :goto_6
    return v0

    .line 77
    :pswitch_7
    const v0, 0x7f020085

    goto :goto_6

    .line 79
    :pswitch_b
    const v0, 0x7f020088

    goto :goto_6

    .line 81
    :pswitch_f
    const v0, 0x7f020086

    goto :goto_6

    .line 83
    :pswitch_13
    const v0, 0x7f020084

    goto :goto_6

    .line 75
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_f
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public checkForNewEmails(JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;
    .registers 11
    .parameter "lastUpdateTime"
    .parameter "onlyCheckForUnreadEmail"
    .parameter "callingTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/vlingo/client/util/BackgroundTask;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    packed-switch v0, :pswitch_data_1c

    .line 117
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 108
    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vlingo/client/safereader/email/IMAPManager;->getEmailSince(Lcom/vlingo/client/safereader/email/EmailAccount;JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_6

    .line 110
    :pswitch_c
    invoke-static {}, Lcom/vlingo/client/safereader/email/POP3Manager;->getInstance()Lcom/vlingo/client/safereader/email/POP3Manager;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/safereader/email/POP3Manager;->getEmailSince(Lcom/vlingo/client/safereader/email/EmailAccount;JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_6

    .line 113
    :catch_19
    move-exception v0

    goto :goto_5

    .line 106
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public getImageResourceId()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    invoke-static {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;->getImageResourceId(I)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 71
    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "val"

    .prologue
    .line 64
    if-eqz p1, :cond_6

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    .line 68
    :goto_5
    return-void

    .line 67
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->enabled:I

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EmailAccount: id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serverType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " securityType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    packed-switch v0, :pswitch_data_12

    .line 101
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 97
    :pswitch_7
    invoke-static {p0}, Lcom/vlingo/client/safereader/email/IMAPManager;->verify(Lcom/vlingo/client/safereader/email/EmailAccount;)Z

    move-result v0

    goto :goto_6

    .line 99
    :pswitch_c
    invoke-static {p0}, Lcom/vlingo/client/safereader/email/POP3Manager;->verify(Lcom/vlingo/client/safereader/email/EmailAccount;)Z

    move-result v0

    goto :goto_6

    .line 95
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
