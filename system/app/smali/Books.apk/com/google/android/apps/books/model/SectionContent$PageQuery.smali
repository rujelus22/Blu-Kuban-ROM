.class public interface abstract Lcom/google/android/apps/books/model/SectionContent$PageQuery;
.super Ljava/lang/Object;
.source "SectionContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/SectionContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PageQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 142
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "remote_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "first_section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "first_chapter_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "page_order"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/SectionContent$PageQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
