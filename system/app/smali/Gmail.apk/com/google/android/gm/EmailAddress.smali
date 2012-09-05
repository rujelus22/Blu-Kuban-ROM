.class public Lcom/google/android/gm/EmailAddress;
.super Ljava/lang/Object;
.source "EmailAddress.java"


# static fields
.field private static final sEmailMatcher:Ljava/util/regex/Matcher;


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mSimplifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-string v0, "\\\"?([^\"<]*?)\\\"?\\s*<(.*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/EmailAddress;->sEmailMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "address"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/gm/EmailAddress;->mAddress:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static declared-synchronized getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/EmailAddress;
    .registers 8
    .parameter "rawAddress"

    .prologue
    .line 76
    const-class v6, Lcom/google/android/gm/EmailAddress;

    monitor-enter v6

    :try_start_3
    sget-object v5, Lcom/google/android/gm/EmailAddress;->sEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 78
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, name:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, address:Ljava/lang/String;
    if-nez v2, :cond_28

    .line 81
    const-string v2, ""

    .line 85
    :goto_1d
    if-nez v0, :cond_35

    .line 86
    const-string v0, ""

    .line 102
    :goto_21
    new-instance v5, Lcom/google/android/gm/EmailAddress;

    invoke-direct {v5, v2, v0}, Lcom/google/android/gm/EmailAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_7d

    monitor-exit v6

    return-object v5

    .line 83
    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 88
    :cond_35
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 92
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_3e
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 93
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    array-length v5, v4

    if-lez v5, :cond_6d

    .line 94
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, tokenizedName:Ljava/lang/String;
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #name:Ljava/lang/String;
    :goto_5a
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #address:Ljava/lang/String;
    goto :goto_21

    .line 95
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_6a
    const-string v2, ""

    goto :goto_5a

    .line 98
    .end local v3           #tokenizedName:Ljava/lang/String;
    :cond_6d
    const-string v2, ""

    .line 99
    .restart local v2       #name:Ljava/lang/String;
    if-nez p0, :cond_74

    const-string v0, ""

    .restart local v0       #address:Ljava/lang/String;
    :goto_73
    goto :goto_21

    .end local v0           #address:Ljava/lang/String;
    :cond_74
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_28 .. :try_end_7b} :catchall_7d

    move-result-object v0

    goto :goto_73

    .line 76
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :catchall_7d
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/EmailAddress;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getSimplifiedName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mSimplifiedName:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 52
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 53
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mAddress:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 54
    .local v0, atSign:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_26
    iput-object v2, p0, Lcom/google/android/gm/EmailAddress;->mSimplifiedName:Ljava/lang/String;

    .line 70
    .end local v0           #atSign:I
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mSimplifiedName:Ljava/lang/String;

    return-object v2

    .line 54
    .restart local v0       #atSign:I
    :cond_2b
    const-string v2, ""

    goto :goto_26

    .line 55
    .end local v0           #atSign:I
    :cond_2e
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 59
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 60
    .local v1, end:I
    :goto_3e
    if-lez v1, :cond_4f

    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4f

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 63
    :cond_4f
    const/4 v2, 0x1

    if-ge v1, v2, :cond_57

    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    :goto_54
    iput-object v2, p0, Lcom/google/android/gm/EmailAddress;->mSimplifiedName:Ljava/lang/String;

    goto :goto_28

    :cond_57
    iget-object v2, p0, Lcom/google/android/gm/EmailAddress;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    .line 66
    .end local v1           #end:I
    :cond_5e
    const-string v2, "Gmail"

    const-string v3, "Unable to get a simplified name"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/EmailAddress;->mSimplifiedName:Ljava/lang/String;

    goto :goto_28
.end method
