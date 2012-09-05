.class Lcom/google/android/apps/books/provider/database/ChaptersTable;
.super Ljava/lang/Object;
.source "ChaptersTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/ChaptersTable$Subquery;,
        Lcom/google/android/apps/books/provider/database/ChaptersTable$Qualified;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    const-string v1, "REFERENCES segments(segment_id)"

    .line 27
    .local v1, refSectionId:Ljava/lang/String;
    const-string v0, "REFERENCES pages(page_id)"

    .line 30
    .local v0, refPageId:Ljava/lang/String;
    const-string v2, "CREATE TABLE chapters (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, chapter_id TEXT NOT NULL, chapter_order INTEGER NOT NULL, title TEXT NOT NULL, start_section_id TEXT NOT NULL REFERENCES segments(segment_id), start_page_id TEXT NOT NULL REFERENCES pages(page_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, chapter_id) ON CONFLICT REPLACE)"

    return-object v2
.end method

.method public static getViewSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    const-string v0, "CREATE VIEW view_chapters AS SELECT chapters.*, (SELECT pages.title FROM pages WHERE pages.account_name=chapters.account_name AND pages.volume_id=chapters.volume_id AND pages.page_id=chapters.start_page_id) AS start_page_title, (CASE EXISTS (SELECT 1 FROM segments WHERE segments.account_name=chapters.account_name AND segments.volume_id=chapters.volume_id AND segments.chapter_id=chapters.chapter_id AND segments.content_status!=1) WHEN 1 THEN 0 ELSE 1 END) AS all_sections_forbidden, (CASE EXISTS (SELECT 1 FROM pages WHERE pages.account_name=chapters.account_name AND pages.volume_id=chapters.volume_id AND pages.first_chapter_id=chapters.chapter_id AND pages.content_status!=1) WHEN 1 THEN 0 ELSE 1 END) AS all_pages_forbidden FROM chapters"

    return-object v0
.end method
