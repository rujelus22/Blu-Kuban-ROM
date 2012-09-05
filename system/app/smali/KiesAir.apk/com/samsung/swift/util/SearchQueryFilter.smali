.class public Lcom/samsung/swift/util/SearchQueryFilter;
.super Ljava/lang/Object;
.source "SearchQueryFilter.java"


# static fields
.field public static KeywordIdSize:I

.field public static Unqualified:I

.field public static after:I

.field public static albumId:I

.field public static artistId:I

.field public static before:I

.field public static calendarId:I

.field public static dateAdded:I

.field public static dateModified:I

.field public static dateTaken:I

.field public static destination:I

.field public static destinationContactId:I

.field public static email:I

.field public static favourite:I

.field public static fileName:I

.field public static filter:I

.field public static flags:I

.field public static folderId:I

.field public static fullSearch:I

.field public static maxDepth:I

.field public static path:I

.field public static phoneNumber:I

.field public static playlistId:I

.field public static selected:I

.field public static source:I

.field public static sourceContactId:I

.field public static status:I

.field public static threadId:I

.field public static title:I

.field public static videoId:I

.field public static withEmails:I

.field public static withPhoneNumber:I


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->sourceContactId:I

    .line 96
    const/4 v0, 0x2

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->destinationContactId:I

    .line 97
    const/4 v0, 0x3

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->folderId:I

    .line 98
    const/4 v0, 0x4

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->flags:I

    .line 99
    const/4 v0, 0x5

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->source:I

    .line 100
    const/4 v0, 0x6

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->threadId:I

    .line 101
    const/4 v0, 0x7

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->destination:I

    .line 102
    const/16 v0, 0x8

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->phoneNumber:I

    .line 103
    const/16 v0, 0x9

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->email:I

    .line 104
    const/16 v0, 0xa

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->favourite:I

    .line 105
    const/16 v0, 0xb

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    .line 106
    const/16 v0, 0xc

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->selected:I

    .line 107
    const/16 v0, 0xd

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->KeywordIdSize:I

    .line 108
    const/16 v0, 0xe

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->albumId:I

    .line 109
    const/16 v0, 0xf

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->artistId:I

    .line 110
    const/16 v0, 0x10

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->playlistId:I

    .line 111
    const/16 v0, 0x11

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->filter:I

    .line 112
    const/16 v0, 0x12

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->withPhoneNumber:I

    .line 113
    const/16 v0, 0x13

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->maxDepth:I

    .line 114
    const/16 v0, 0x14

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->dateTaken:I

    .line 115
    const/16 v0, 0x15

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->dateAdded:I

    .line 116
    const/16 v0, 0x16

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->dateModified:I

    .line 117
    const/16 v0, 0x17

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->title:I

    .line 118
    const/16 v0, 0x18

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->fileName:I

    .line 119
    const/16 v0, 0x19

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->videoId:I

    .line 120
    const/16 v0, 0x1a

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->status:I

    .line 121
    const/16 v0, 0x1b

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->calendarId:I

    .line 122
    const/16 v0, 0x1c

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->withEmails:I

    .line 123
    const/16 v0, 0x1d

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->before:I

    .line 124
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->after:I

    .line 125
    const/16 v0, 0x1f

    sput v0, Lcom/samsung/swift/util/SearchQueryFilter;->fullSearch:I

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide p1, p0, Lcom/samsung/swift/util/SearchQueryFilter;->peer:J

    .line 130
    return-void
.end method


# virtual methods
.method public native getFilterTerms(I)[Ljava/lang/String;
.end method
