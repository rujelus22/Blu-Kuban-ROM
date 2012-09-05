.class Lcom/google/android/apps/books/provider/database/ResourcesTable;
.super Ljava/lang/Object;
.source "ResourcesTable.java"


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
    .line 28
    const-string v0, "REFERENCES segments(segment_id)"

    .line 30
    .local v0, refSectionId:Ljava/lang/String;
    const-string v1, "REFERENCES session_keys(_id)"

    .line 32
    .local v1, refSessionKeyId:Ljava/lang/String;
    const-string v2, "CREATE TABLE resources (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL, resource_id TEXT NOT NULL, related_section_id TEXT REFERENCES segments(segment_id), resource_order INTEGER NOT NULL, remote_url TEXT NOT NULL, content_status INTEGER NOT NULL DEFAULT 0, session_key_id INTEGER REFERENCES session_keys(_id), resource_type TEXT, FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id), UNIQUE (account_name, volume_id, resource_id) ON CONFLICT REPLACE)"

    return-object v2
.end method

.method public static getViewSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    const-string v0, "CREATE VIEW view_resources AS SELECT resources.*, session_keys.session_key_version AS session_key_version, session_keys.root_key_version AS root_key_version, session_keys.session_key_blob AS session_key_blob FROM resources LEFT OUTER JOIN session_keys ON session_keys._id=resources.session_key_id"

    return-object v0
.end method
