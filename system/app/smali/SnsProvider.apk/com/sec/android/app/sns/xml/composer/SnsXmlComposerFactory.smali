.class public final Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
.super Ljava/lang/Object;
.source "SnsXmlComposerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newComposer(ILandroid/content/Context;)Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    .registers 4
    .parameter "reqType"
    .parameter "context"

    .prologue
    .line 27
    if-ltz p1, :cond_b

    const/4 v0, 0x3

    if-gt p1, v0, :cond_b

    .line 28
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_a
    return-object v0

    .line 29
    :cond_b
    const/4 v0, 0x4

    if-lt p1, v0, :cond_17

    const/4 v0, 0x6

    if-gt p1, v0, :cond_17

    .line 31
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 32
    :cond_17
    const/4 v0, 0x7

    if-lt p1, v0, :cond_24

    const/16 v0, 0xa

    if-gt p1, v0, :cond_24

    .line 34
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 35
    :cond_24
    const/16 v0, 0xb

    if-lt p1, v0, :cond_32

    const/16 v0, 0x10

    if-gt p1, v0, :cond_32

    .line 36
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 37
    :cond_32
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3c

    .line 38
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 39
    :cond_3c
    const/16 v0, 0x12

    if-lt p1, v0, :cond_4a

    const/16 v0, 0x16

    if-gt p1, v0, :cond_4a

    .line 41
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 42
    :cond_4a
    const/16 v0, 0x18

    if-lt p1, v0, :cond_58

    const/16 v0, 0x19

    if-gt p1, v0, :cond_58

    .line 44
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 45
    :cond_58
    const/16 v0, 0x1a

    if-lt p1, v0, :cond_66

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_66

    .line 47
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 48
    :cond_66
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_74

    const/16 v0, 0x21

    if-gt p1, v0, :cond_74

    .line 50
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 51
    :cond_74
    const/16 v0, 0x22

    if-lt p1, v0, :cond_82

    const/16 v0, 0x23

    if-gt p1, v0, :cond_82

    .line 52
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 53
    :cond_82
    const/16 v0, 0x17

    if-ne p1, v0, :cond_8d

    .line 54
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 55
    :cond_8d
    const/16 v0, 0x24

    if-ne p1, v0, :cond_98

    .line 56
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 57
    :cond_98
    const/16 v0, 0x25

    if-lt p1, v0, :cond_a7

    const/16 v0, 0x26

    if-gt p1, v0, :cond_a7

    .line 59
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 60
    :cond_a7
    const/16 v0, 0x27

    if-ne p1, v0, :cond_b2

    .line 61
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 62
    :cond_b2
    const/16 v0, 0x28

    if-ne p1, v0, :cond_bd

    .line 63
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 64
    :cond_bd
    const/16 v0, 0x29

    if-ne p1, v0, :cond_c8

    .line 65
    new-instance v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerOAuth;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerOAuth;-><init>(Landroid/content/Context;)V

    goto/16 :goto_a

    .line 67
    :cond_c8
    const/4 v0, 0x0

    goto/16 :goto_a
.end method
