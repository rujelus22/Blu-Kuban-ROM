.class Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAndCheckCertificatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field private sendCanceled:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 3
    .parameter

    .prologue
    .line 5380
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5380
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method

.method static synthetic access$8402(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5380
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5380
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 27
    .parameter "params"

    .prologue
    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v19

    .line 5397
    .local v19, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 5398
    .local v5, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 5400
    .local v4, bcc:[Lcom/android/emailcommon/mail/Address;
    new-instance v21, Lcom/android/emailcommon/mail/Address;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    invoke-direct/range {v21 .. v23}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v11

    .line 5402
    .local v11, from:[Lcom/android/emailcommon/mail/Address;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [[Ljavax/mail/Address;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static/range {v19 .. v19}, Lcom/android/email/activity/MessageCompose;->access$8300([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$8300([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$8300([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    #calls: Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$8300([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/smime/SMIMEHelper;->joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v3

    .line 5404
    .local v3, addresses:[Ljavax/mail/Address;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5406
    .local v17, recipientCertificates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v21 .. v21}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-wide/from16 v0, v21

    move-object/from16 v2, v23

    invoke-static {v3, v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil;->getCertificates([Ljavax/mail/Address;JLandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_a5} :catch_e6
    .catch Lcom/android/emailcommon/smime/CertificateUtilExcpetion; {:try_start_84 .. :try_end_a5} :catch_10f

    move-result-object v17

    .line 5423
    :cond_a6
    :goto_a6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5424
    .local v15, noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 5425
    .local v20, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    if-eqz v17, :cond_17c

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_17c

    .line 5438
    const/4 v13, 0x0

    .local v13, j:I
    :goto_b9
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_192

    .line 5439
    aget-object v21, v3, v13

    invoke-virtual/range {v21 .. v21}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5440
    .local v7, cur_address:Ljava/lang/String;
    if-eqz v7, :cond_153

    .line 5441
    const/4 v6, 0x0

    .line 5442
    .local v6, certfounded:Z
    const/4 v8, 0x0

    .line 5443
    .local v8, cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_cb
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_13c

    .line 5444
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    .line 5446
    .local v16, recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    if-eqz v16, :cond_e3

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_127

    .line 5443
    :cond_e3
    add-int/lit8 v12, v12, 0x1

    goto :goto_cb

    .line 5408
    .end local v6           #certfounded:Z
    .end local v7           #cur_address:Ljava/lang/String;
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v12           #i:I
    .end local v13           #j:I
    .end local v15           #noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v20           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :catch_e6
    move-exception v10

    .line 5410
    .local v10, ex:Ljava/lang/IllegalArgumentException;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->cancel(Z)Z

    .line 5411
    instance-of v0, v10, Ljava/lang/IllegalArgumentException;

    move/from16 v21, v0

    if-eqz v21, :cond_a6

    .line 5412
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v21

    const-string v22, "MessagingException: type:7"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a6

    .line 5415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    const v22, 0x7f080114

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/MessageCompose;->displayToast(I)V

    goto :goto_a6

    .line 5417
    .end local v10           #ex:Ljava/lang/IllegalArgumentException;
    :catch_10f
    move-exception v9

    .line 5418
    .local v9, e:Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
    const-string v21, "MessageCompose"

    invoke-virtual {v9}, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->cancel(Z)Z

    goto :goto_a6

    .line 5450
    .end local v9           #e:Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
    .restart local v6       #certfounded:Z
    .restart local v7       #cur_address:Ljava/lang/String;
    .restart local v8       #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v12       #i:I
    .restart local v13       #j:I
    .restart local v15       #noValidCertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v20       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;>;"
    :cond_127
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e3

    .line 5452
    move-object/from16 v8, v16

    .line 5453
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v21

    if-eqz v21, :cond_13c

    .line 5454
    const/4 v6, 0x1

    .line 5461
    .end local v16           #recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    :cond_13c
    if-eqz v6, :cond_171

    .line 5462
    if-eqz v8, :cond_153

    .line 5464
    const/16 v21, 0x1

    :try_start_142
    move/from16 v0, v21

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v8, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/smime/CertificateUtil;->checkCertValidity([Ljava/security/cert/Certificate;)V
    :try_end_153
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_142 .. :try_end_153} :catch_157
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_142 .. :try_end_153} :catch_164

    .line 5438
    .end local v6           #certfounded:Z
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v12           #i:I
    :cond_153
    :goto_153
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b9

    .line 5466
    .restart local v6       #certfounded:Z
    .restart local v8       #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v12       #i:I
    :catch_157
    move-exception v9

    .line 5467
    .local v9, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 5468
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5469
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 5470
    .end local v9           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_164
    move-exception v9

    .line 5471
    .local v9, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 5472
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5473
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 5480
    .end local v9           #e:Ljava/security/cert/CertificateNotYetValidException;
    :cond_171
    if-eqz v8, :cond_178

    .line 5481
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5483
    :cond_178
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 5489
    .end local v6           #certfounded:Z
    .end local v7           #cur_address:Ljava/lang/String;
    .end local v8           #cur_recipientCertificate:Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v12           #i:I
    .end local v13           #j:I
    :cond_17c
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_17d
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_192

    .line 5490
    aget-object v21, v3, v12

    invoke-virtual/range {v21 .. v21}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5489
    add-int/lit8 v12, v12, 0x1

    goto :goto_17d

    .line 5494
    .end local v12           #i:I
    :cond_192
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_19f

    .line 5495
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5498
    :cond_19f
    if-eqz v17, :cond_222

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_222

    .line 5499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$1;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/email/activity/MessageCompose;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5508
    const/16 v21, 0x0

    :try_start_1bb
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/android/emailcommon/smime/CertificateUtil;->validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v18

    .line 5513
    .local v18, status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v18, :cond_212

    .line 5514
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1e8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_222

    .line 5515
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_20f

    .line 5516
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->getEmailAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bb .. :try_end_20f} :catch_215

    .line 5514
    :cond_20f
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e8

    .line 5521
    .end local v12           #i:I
    :cond_212
    const/16 v21, 0x0

    .line 5530
    .end local v18           #status:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_214
    return-object v21

    .line 5523
    :catch_215
    move-exception v14

    .line 5524
    .local v14, me:Ljava/lang/IllegalArgumentException;
    const-string v21, "MessageCompose"

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    const/16 v21, 0x0

    goto :goto_214

    .line 5530
    .end local v14           #me:Ljava/lang/IllegalArgumentException;
    :cond_222
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    goto :goto_214
.end method

.method protected onCancelled()V
    .registers 2

    .prologue
    .line 5557
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    if-eqz v0, :cond_5

    .line 5564
    :cond_4
    :goto_4
    return-void

    .line 5561
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 5562
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 5380
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .registers 8
    .parameter "listOfInvalidCerts"

    .prologue
    .line 5569
    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->sendCanceled:Z

    if-eqz v3, :cond_5

    .line 5611
    :goto_4
    return-void

    .line 5573
    :cond_5
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_e

    .line 5574
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5576
    :cond_e
    if-nez p1, :cond_1e

    .line 5577
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0804f8

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 5581
    :cond_1e
    array-length v3, p1

    if-nez v3, :cond_27

    .line 5582
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->send()V
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$8500(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_4

    .line 5584
    :cond_27
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5585
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v4, 0x7f0804f4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5587
    const-string v2, ""

    .line 5588
    .local v2, recipients:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_41
    array-length v3, p1

    if-ge v1, v3, :cond_60

    .line 5589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5588
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 5591
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0804f3

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5595
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v5, 0x7f0804f5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5607
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 5608
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5536
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    .line 5537
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0804f6

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5538
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5539
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5540
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$2;-><init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 5551
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5552
    return-void
.end method
