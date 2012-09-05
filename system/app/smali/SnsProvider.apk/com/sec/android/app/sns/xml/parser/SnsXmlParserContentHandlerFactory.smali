.class public final Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;
.super Ljava/lang/Object;
.source "SnsXmlParserContentHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newContentHandler(I)Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
    .registers 3
    .parameter "reqType"

    .prologue
    .line 18
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_9

    :cond_5
    const/16 v0, 0x29

    if-ne p1, v0, :cond_f

    .line 20
    :cond_9
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;-><init>()V

    .line 57
    :goto_e
    return-object v0

    .line 21
    :cond_f
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1b

    const/4 v0, 0x6

    if-gt p1, v0, :cond_1b

    .line 23
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;-><init>()V

    goto :goto_e

    .line 24
    :cond_1b
    const/4 v0, 0x7

    if-lt p1, v0, :cond_28

    const/16 v0, 0xa

    if-gt p1, v0, :cond_28

    .line 26
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserCommentContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserCommentContentHandler;-><init>()V

    goto :goto_e

    .line 27
    :cond_28
    const/16 v0, 0xb

    if-lt p1, v0, :cond_36

    const/16 v0, 0x10

    if-gt p1, v0, :cond_36

    .line 28
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;-><init>()V

    goto :goto_e

    .line 29
    :cond_36
    const/16 v0, 0x11

    if-ne p1, v0, :cond_40

    .line 30
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;-><init>()V

    goto :goto_e

    .line 31
    :cond_40
    const/16 v0, 0x18

    if-lt p1, v0, :cond_4e

    const/16 v0, 0x19

    if-gt p1, v0, :cond_4e

    .line 33
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;-><init>()V

    goto :goto_e

    .line 34
    :cond_4e
    const/16 v0, 0x12

    if-lt p1, v0, :cond_5c

    const/16 v0, 0x16

    if-gt p1, v0, :cond_5c

    .line 36
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;-><init>()V

    goto :goto_e

    .line 37
    :cond_5c
    const/16 v0, 0x1a

    if-lt p1, v0, :cond_6a

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_6a

    .line 39
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;-><init>()V

    goto :goto_e

    .line 40
    :cond_6a
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_78

    const/16 v0, 0x21

    if-gt p1, v0, :cond_78

    .line 42
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;-><init>()V

    goto :goto_e

    .line 43
    :cond_78
    const/16 v0, 0x22

    if-lt p1, v0, :cond_86

    const/16 v0, 0x23

    if-gt p1, v0, :cond_86

    .line 44
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;-><init>()V

    goto :goto_e

    .line 45
    :cond_86
    const/16 v0, 0x17

    if-ne p1, v0, :cond_91

    .line 46
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;-><init>()V

    goto/16 :goto_e

    .line 47
    :cond_91
    const/16 v0, 0x24

    if-ne p1, v0, :cond_9c

    .line 48
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;-><init>()V

    goto/16 :goto_e

    .line 49
    :cond_9c
    const/16 v0, 0x25

    if-lt p1, v0, :cond_ab

    const/16 v0, 0x26

    if-gt p1, v0, :cond_ab

    .line 51
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;-><init>()V

    goto/16 :goto_e

    .line 52
    :cond_ab
    const/16 v0, 0x27

    if-ne p1, v0, :cond_b6

    .line 53
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserLinkContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserLinkContentHandler;-><init>()V

    goto/16 :goto_e

    .line 54
    :cond_b6
    const/16 v0, 0x28

    if-ne p1, v0, :cond_c1

    .line 55
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSnsGatewayContentHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSnsGatewayContentHandler;-><init>()V

    goto/16 :goto_e

    .line 57
    :cond_c1
    const/4 v0, 0x0

    goto/16 :goto_e
.end method
