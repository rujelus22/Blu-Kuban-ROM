.class interface abstract Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;
.super Ljava/lang/Object;
.source "SectionContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/SectionContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VolumeQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "has_image_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "has_text_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "first_chapter_start_segment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "viewability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open_access"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "publisher"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
