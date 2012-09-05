.class Lcom/google/android/apps/books/provider/database/SegmentsTable;
.super Ljava/lang/Object;
.source "SegmentsTable.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    const-string v0, "REFERENCES chapters(chapter_id)"

    .line 29
    .local v0, refChapterId:Ljava/lang/String;
    const-string v1, "REFERENCES session_keys(_id)"

    .line 31
    .local v1, refSessionKeyId:Ljava/lang/String;
    const-string v2, "CREATE TABLE segments (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, segment_id TEXT NOT NULL, title TEXT NOT NULL, segment_order INTEGER NOT NULL, chapter_id TEXT NOT NULL REFERENCES chapters(chapter_id), page_count INTEGER NOT NULL DEFAULT 0, start_position TEXT NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, segment_id) ON CONFLICT REPLACE)"

    return-object v2
.end method

.method public static getViewSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    const-string v0, "CREATE VIEW view_segments AS SELECT segments.*, session_keys.session_key_version AS session_key_version, session_keys.root_key_version AS root_key_version, session_keys.session_key_blob AS session_key_blob FROM segments LEFT OUTER JOIN session_keys ON session_keys._id=segments.session_key_id"

    return-object v0
.end method
