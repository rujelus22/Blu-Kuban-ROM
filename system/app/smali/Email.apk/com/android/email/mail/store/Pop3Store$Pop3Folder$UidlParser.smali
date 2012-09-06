.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UidlParser"
.end annotation


# instance fields
.field public mEndOfMessage:Z

.field public mErr:Z

.field public mMessageNumber:I

.field public mUniqueId:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V
    .registers 3
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->this$1:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 553
    return-void
.end method


# virtual methods
.method public parseMultiLine(Ljava/lang/String;)Z
    .registers 9
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 597
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    :cond_c
    move v3, v4

    .line 617
    :goto_d
    return v3

    .line 600
    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 601
    .local v0, first:C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_19

    .line 602
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_d

    .line 605
    :cond_19
    const-string v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, uidParts:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_36

    .line 608
    const/4 v5, 0x0

    :try_start_24
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_33

    .line 612
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 613
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_d

    .line 609
    :catch_33
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 610
    goto :goto_d

    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_36
    move v3, v4

    .line 617
    goto :goto_d
.end method

.method public parseSingleLine(Ljava/lang/String;)Z
    .registers 9
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 564
    iput-boolean v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    .line 565
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    :cond_c
    move v3, v4

    .line 585
    :goto_d
    return v3

    .line 568
    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 569
    .local v0, first:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_34

    .line 570
    const-string v5, " +"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, uidParts:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3b

    .line 573
    const/4 v5, 0x1

    :try_start_21
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_29} :catch_31

    .line 577
    const/4 v4, 0x2

    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    .line 578
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    goto :goto_d

    .line 574
    :catch_31
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 575
    goto :goto_d

    .line 581
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .end local v2           #uidParts:[Ljava/lang/String;
    :cond_34
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3b

    .line 582
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mErr:Z

    goto :goto_d

    :cond_3b
    move v3, v4

    .line 585
    goto :goto_d
.end method
