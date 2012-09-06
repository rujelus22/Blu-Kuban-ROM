.class public Lcom/estrongs/android/pop/a/d;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/estrongs/android/pop/a/e;

    invoke-direct {v0}, Lcom/estrongs/android/pop/a/e;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/a/d;->b:Ljava/util/Comparator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3g2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bmp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "docm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "docx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dot"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dotx"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "epub"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pdf"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "png"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pot"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "potm"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "potx"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pps"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ppsm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ppsx"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ppt"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pptm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pptx"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "psd"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "tif"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "tiff"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "txt"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "xls"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "xlsb"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "xlsm"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "xlsx"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "wav"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "webp"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "wmv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/a/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final A(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "dropbox"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final B(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "skydrive"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final C(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "net://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final D(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "bt://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final E(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "bt://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final F(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final G(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "smb://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "bt://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftps://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftpes://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "sftp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "webdav://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final H(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static I(Ljava/lang/String;)I
    .registers 2

    const-string v0, "sftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ftps://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x7

    :goto_11
    return v0

    :cond_12
    const-string v0, "ftpes://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x8

    goto :goto_11

    :cond_1d
    const-string v0, "webdav://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x9

    goto :goto_11

    :cond_28
    const-string v0, "webdavs://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0xa

    goto :goto_11

    :cond_33
    const/4 v0, 0x6

    goto :goto_11
.end method

.method public static final J(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "smb://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "bt://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftps://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ftpes://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "sftp://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "webdav://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final K(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "//"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_17
    :goto_17
    return-object p0

    :cond_18
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3f
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_4b
    const-string v0, "/./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_5e
    const-string v0, "/../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17
.end method

.method public static final L(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, ":"

    const-string v1, "[\\$\\$\\$]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "[###]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    const-string v2, "[^^^]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static final M(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\\[\\$\\$\\$\\]"

    const-string v1, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[###\\]"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[\\^\\^\\^\\]"

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static final N(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_28

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_28
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sftp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string p0, "ftp://"

    goto :goto_3

    :cond_49
    const-string v2, "ftps://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string p0, "ftp://"

    goto :goto_3

    :cond_54
    const-string v2, "ftpes://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string p0, "ftp://"

    goto :goto_3

    :cond_5f
    const-string v2, "webdavs://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string p0, "ftp://"

    goto :goto_3

    :cond_6a
    const-string v2, "webdav://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string p0, "ftp://"

    goto :goto_3

    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static final O(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "/mnt/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1a
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0

    :catch_17
    move-exception v0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_1e
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    goto :goto_16
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-object p0

    :cond_b
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "/sdcard/"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method public static R(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/16 v2, 0xc

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v5, v4

    move v4, v1

    :goto_16
    if-ne v5, v9, :cond_23

    move-object v0, v3

    :goto_19
    return-object v0

    :cond_1a
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v4

    move v4, v0

    goto :goto_16

    :cond_23
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_37

    move-object v0, v3

    goto :goto_19

    :cond_37
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    move v2, v1

    move v1, v0

    :goto_4e
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v6, v9, :cond_140

    move-object v5, v3

    move-object v6, v4

    move-object v4, v3

    :goto_59
    if-nez v2, :cond_ac

    if-eqz v4, :cond_17d

    sget-object v2, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    monitor-enter v2

    if-nez v5, :cond_161

    move-object v0, v4

    :goto_63
    :try_start_63
    sget-object v9, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_17a

    if-nez v0, :cond_8d

    invoke-static {v3}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v1, v6}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8d
    :goto_8d
    if-eqz v0, :cond_a9

    if-eqz v5, :cond_99

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ac
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    :cond_b5
    const-string v5, "smb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    const-string v2, "smb://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_4e

    :cond_c4
    const-string v1, "ftp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    const/4 v1, 0x2

    const-string v2, "ftp://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto/16 :goto_4e

    :cond_d5
    const-string v1, "sftp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    const/4 v1, 0x5

    const-string v2, "sftp://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto/16 :goto_4e

    :cond_e6
    const-string v1, "webdav"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string v1, "webdav://"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    move v2, v0

    goto/16 :goto_4e

    :cond_f7
    const-string v1, "webdavs"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "webdavs://"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    move v2, v0

    goto/16 :goto_4e

    :cond_108
    const-string v1, "netdisk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    const/4 v1, 0x4

    const-string v2, "net://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto/16 :goto_4e

    :cond_119
    const-string v1, "ftps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    const/16 v1, 0xd

    const-string v2, "ftps://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto/16 :goto_4e

    :cond_12b
    const-string v1, "ftpes"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    const/16 v1, 0xd

    const-string v2, "ftpes://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto/16 :goto_4e

    :cond_13d
    move-object v0, v3

    goto/16 :goto_19

    :cond_140
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_180

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v4, v5

    move-object v5, v0

    goto/16 :goto_59

    :cond_161
    :try_start_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x3b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    :catchall_17a
    move-exception v0

    monitor-exit v2
    :try_end_17c
    .catchall {:try_start_161 .. :try_end_17c} :catchall_17a

    throw v0

    :cond_17d
    move-object v0, v3

    goto/16 :goto_8d

    :cond_180
    move-object v6, v4

    move-object v4, v5

    move-object v5, v3

    goto/16 :goto_59
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v4, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_e

    if-gt v3, v2, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static final T(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "/mnt/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    move v0, v1

    goto :goto_4

    :cond_1f
    invoke-static {}, Lcom/estrongs/android/pop/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_50
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_6b
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v1, :cond_16

    if-ltz v2, :cond_18

    if-ge v1, v2, :cond_18

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static V(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    move v0, v1

    :goto_9
    sget-object v3, Lcom/estrongs/android/pop/a/d;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    sget-object v3, Lcom/estrongs/android/pop/a/d;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static W(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "/sdcard/"

    invoke-static {}, Lcom/estrongs/android/pop/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    const-string v0, "smb://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Whole Network"

    goto :goto_5

    :cond_11
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_3d
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_5f

    :goto_4d
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_64

    :goto_55
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_6b

    move-object p0, v0

    goto :goto_5

    :cond_5f
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_64
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_6b
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_46

    :pswitch_3
    const/4 p0, 0x0

    :cond_4
    :goto_4
    :pswitch_4
    return-object p0

    :pswitch_5
    const-string v0, "smb://"

    :cond_7
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string p0, "/"

    if-lez v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_1e
    const-string v0, "bt://"

    goto :goto_7

    :pswitch_21
    const-string v0, "sftp://"

    goto :goto_7

    :pswitch_24
    const-string v0, "webdav://"

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "webdavs://"

    goto :goto_7

    :pswitch_31
    const-string v0, "ftps://"

    const-string v1, "ftpes://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "ftpes://"

    goto :goto_7

    :pswitch_3e
    const-string v0, "ftp://"

    goto :goto_7

    :pswitch_41
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3e
        :pswitch_1e
        :pswitch_41
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_31
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 14

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "http://"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "127.0.0.1:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_1b8

    :goto_2c
    :pswitch_2c
    return-object v1

    :pswitch_2d
    new-instance v2, Ljava/lang/String;

    const-string v0, "fake"

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    const-string v3, "fake"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "local"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v4, v2

    move-object v0, v1

    move-object v2, v1

    :goto_44
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5d

    if-eqz v0, :cond_55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_74

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9e

    sget-object v9, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    monitor-enter v9

    if-nez v0, :cond_156

    :goto_7f
    if-nez v2, :cond_16f

    :try_start_81
    sget-object v0, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9d
    monitor-exit v9
    :try_end_9e
    .catchall {:try_start_81 .. :try_end_9e} :catchall_197

    :cond_9e
    invoke-static {p0, v7}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19a

    const-string v0, "$$$$$"

    const-string v2, "can\'t get real path"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :pswitch_ac
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "smb"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_44

    :pswitch_c1
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sftp"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :pswitch_d8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ftps://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f7

    const-string v4, "ftps"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :cond_f7
    const-string v4, "ftpes"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :pswitch_102
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "webdav://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    const-string v4, "webdav"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :cond_121
    const-string v4, "webdavs"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :pswitch_12c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ftp"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_44

    :pswitch_143
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "netdisk"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v4, v2

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_44

    :cond_156
    :try_start_156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7f

    :cond_16f
    sget-object v0, Lcom/estrongs/android/pop/a/d;->c:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9d

    :catchall_197
    move-exception v0

    monitor-exit v9
    :try_end_199
    .catchall {:try_start_156 .. :try_end_199} :catchall_197

    throw v0

    :cond_19a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1aa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2c

    :cond_1b0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1aa

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_ac
        :pswitch_12c
        :pswitch_2c
        :pswitch_143
        :pswitch_c1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_102
        :pswitch_d8
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-eqz p1, :cond_7

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static final a(ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x5

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    if-nez p0, :cond_a

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public static a()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :try_start_f
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/mounts"

    const-string v4, "r"

    invoke-direct {v0, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_96

    :try_start_18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_ad

    move-result-object v1

    move-object v4, v1

    move v2, v3

    :goto_1e
    if-nez v4, :cond_37

    :try_start_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_a5

    :goto_23
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_36
    return-object v5

    :cond_37
    :try_start_37
    const-string v1, " /proc "

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4b

    move v1, v3

    :goto_48
    array-length v8, v7

    if-lt v1, v8, :cond_89

    :cond_4b
    move v1, v2

    :cond_4c
    const-string v2, "/dev/block/vold/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "/dev/fuse"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_5c
    const-string v2, "secure"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, "asec"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_82

    array-length v4, v2

    if-ge v1, v4, :cond_82

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_82
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    goto :goto_1e

    :cond_89
    const-string v8, "/proc"

    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_90
    .catchall {:try_start_37 .. :try_end_90} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_90} :catch_ad

    move-result v8

    if-nez v8, :cond_4c

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :catch_96
    move-exception v0

    move-object v0, v1

    :goto_98
    :try_start_98
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_23

    :catch_9c
    move-exception v0

    goto :goto_23

    :catchall_9e
    move-exception v0

    :goto_9f
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    :goto_a2
    throw v0

    :catch_a3
    move-exception v1

    goto :goto_a2

    :catch_a5
    move-exception v0

    goto/16 :goto_23

    :catchall_a8
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_9f

    :catch_ad
    move-exception v1

    goto :goto_98
.end method

.method public static a(Ljava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_12

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v4

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "/system/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "/system/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "/data/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "/data/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v1, :cond_6f

    if-eqz v2, :cond_6f

    invoke-static {}, Lcom/estrongs/android/pop/a/d;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/a/d;->b:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move-object v2, v0

    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4c

    if-eqz v2, :cond_6d

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v3

    goto :goto_8

    :cond_4c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v2, :cond_5f

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    move-object v2, v0

    :cond_5f
    if-nez v1, :cond_3c

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    move-object v1, v0

    goto :goto_3c

    :cond_6d
    move v0, v4

    goto :goto_8

    :cond_6f
    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    move v0, v3

    goto :goto_8

    :cond_75
    if-eqz v7, :cond_7b

    if-eqz v8, :cond_7b

    move v0, v3

    goto :goto_8

    :cond_7b
    if-nez v1, :cond_89

    if-nez v2, :cond_89

    if-nez v5, :cond_89

    if-nez v6, :cond_89

    if-nez v7, :cond_89

    if-nez v8, :cond_89

    move v0, v3

    goto :goto_8

    :cond_89
    move v0, v4

    goto/16 :goto_8
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "webdavs://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@webdav.yandex.ru"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_31

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_68

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "/"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_f

    :cond_51
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :cond_68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "yandex"

    invoke-static {v0, p0, p1, p2}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_4a

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_29
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_38

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_4a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "/"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x5

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_34

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static final i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static final j(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    if-le v2, v1, :cond_3b

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public static final k(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const-string v1, "ftps://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "ftpes://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_2c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public static final l(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-nez p0, :cond_6

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_28

    :goto_16
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2e

    :goto_1e
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_35

    move-object v0, v1

    goto :goto_5

    :cond_28
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_35
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_21

    :goto_17
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_26

    move-object v0, v1

    goto :goto_6

    :cond_21
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_26
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_34

    move-object v0, v1

    goto :goto_6

    :cond_34
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static final n(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v4, -0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const/16 v1, 0x3b

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v2, 0x3a

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_4

    if-eq v1, v4, :cond_25

    if-le v1, v2, :cond_32

    :cond_25
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_32
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method public static final o(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_21

    :goto_17
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_26

    move-object v0, v1

    goto :goto_6

    :cond_21
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_26
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_34

    move-object v0, v1

    goto :goto_6

    :cond_34
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static final p(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x5

    if-nez p0, :cond_7

    const/4 p0, 0x0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "bt://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_30
    if-eq v0, v3, :cond_47

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_40
    if-le v0, v2, :cond_6

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_47
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->I(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6
.end method

.method public static final q(Ljava/lang/String;)I
    .registers 2

    const-string v0, "smb://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "ftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const-string v0, "sftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x5

    goto :goto_9

    :cond_1e
    const-string v0, "webdav://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "webdavs://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2e
    const/16 v0, 0xc

    goto :goto_9

    :cond_31
    const-string v0, "bt://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x3

    goto :goto_9

    :cond_3b
    const-string v0, "net://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x4

    goto :goto_9

    :cond_45
    const-string v0, "ftps://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "ftpes://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_55
    const/16 v0, 0xd

    goto :goto_9

    :cond_58
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final r(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "smb://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final s(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "sftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final t(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "webdav://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_14
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final u(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "ftps://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "ftpes://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_14
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final v(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "ftp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "net://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v0, "/"

    if-lez v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "net://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    aget-object v0, v1, v4

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "net://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v4, :cond_5

    aget-object v0, v1, v4

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    const-string v1, "net://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "net://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ne v2, v3, :cond_2c

    aget-object v0, v0, v4

    goto :goto_5

    :cond_2c
    aget-object v0, v1, v3

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_3a

    const-string v0, "UnknownType"

    goto :goto_5

    :cond_3a
    aget-object v0, v0, v3

    goto :goto_5
.end method
