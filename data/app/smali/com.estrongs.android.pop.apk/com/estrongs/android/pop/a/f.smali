.class public Lcom/estrongs/android/pop/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x6004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-bittorrent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x5003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x4003c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x4003b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/esj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x6004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-mobipocket-ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x5003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x80001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-nzb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x1004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/vnd.qcelp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x20029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x2002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x2002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/flac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x2002c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-ape"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x2002d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x2002e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-imelody"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x30027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x30028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x30029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-msvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x3002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-matroska"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x10010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x10011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x10012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x10013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x10014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "magnus-internal/cgi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\tmagnus-internal/cgi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x40040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x50038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x50039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x70001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x50040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-rar-compressed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    const v1, 0x50041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final A(I)Z
    .registers 2

    const/high16 v0, 0x1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static final A(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->u(I)Z

    move-result v0

    return v0
.end method

.method public static B(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final B(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->v(I)Z

    move-result v0

    return v0
.end method

.method public static final C(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->w(I)Z

    move-result v0

    return v0
.end method

.method public static final D(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->x(I)Z

    move-result v0

    return v0
.end method

.method public static final E(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->y(I)Z

    move-result v0

    return v0
.end method

.method public static final F(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->z(I)Z

    move-result v0

    return v0
.end method

.method public static final G(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->A(I)Z

    move-result v0

    return v0
.end method

.method public static final H(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "rm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "rmvb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".mpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".asf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".flv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static I(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, ".tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "application/zip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "application/x-zip-compressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const-string v0, ".zip"

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "application/x-gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, ".gz"

    goto :goto_12

    :cond_1e
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "application/rar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2e
    const-string v0, ".rar"

    goto :goto_12

    :cond_31
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, "*/*"

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->B(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "*/*"

    goto :goto_4
.end method

.method public static final a(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_28

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/high16 v0, 0x1

    goto :goto_e

    :cond_37
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const v0, 0x10010

    goto :goto_e

    :cond_43
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const v0, 0x10011

    goto :goto_e

    :cond_4f
    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, ".wbmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_5f
    const v0, 0x10012

    goto :goto_e

    :cond_63
    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const v0, 0x10013

    goto :goto_e

    :cond_6f
    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const v0, 0x10014

    goto :goto_e

    :cond_7b
    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    const v0, 0x20020

    goto :goto_e

    :cond_87
    const-string v2, ".ape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    const v0, 0x2002c

    goto/16 :goto_e

    :cond_94
    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, ".m4v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    :cond_a4
    const v0, 0x3002c

    goto/16 :goto_e

    :cond_a9
    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    const v0, 0x3002b

    goto/16 :goto_e

    :cond_b6
    const-string v2, ".mid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, ".midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, "rmi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    :cond_ce
    const v0, 0x20021

    goto/16 :goto_e

    :cond_d3
    const-string v2, ".wmv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const v0, 0x30028

    goto/16 :goto_e

    :cond_e0
    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const v0, 0x20022

    goto/16 :goto_e

    :cond_ed
    const-string v2, ".asf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const v0, 0x30027

    goto/16 :goto_e

    :cond_fa
    const-string v2, ".mpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10a

    const-string v2, ".ts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10f

    :cond_10a
    const v0, 0x3002d

    goto/16 :goto_e

    :cond_10f
    const-string v2, ".mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    const v0, 0x3002e

    goto/16 :goto_e

    :cond_11c
    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13c

    const-string v2, ".3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13c

    const-string v2, ".3g2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13c

    const-string v2, ".3gpp2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_141

    :cond_13c
    const v0, 0x3002a

    goto/16 :goto_e

    :cond_141
    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    const v0, 0x20023

    goto/16 :goto_e

    :cond_14e
    const-string v2, ".rm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15e

    const-string v2, ".rmvb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_163

    :cond_15e
    const v0, 0x30029

    goto/16 :goto_e

    :cond_163
    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_173

    const-string v2, ".x-ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_178

    :cond_173
    const v0, 0x20024

    goto/16 :goto_e

    :cond_178
    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_188

    const-string v2, ".aac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18d

    :cond_188
    const v0, 0x20025

    goto/16 :goto_e

    :cond_18d
    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19a

    const v0, 0x20026

    goto/16 :goto_e

    :cond_19a
    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, ".docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1af

    :cond_1aa
    const v0, 0x40030

    goto/16 :goto_e

    :cond_1af
    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d7

    const-string v2, ".pps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d7

    const-string v2, ".ppx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d7

    const-string v2, ".pptx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d7

    const-string v2, ".odp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    :cond_1d7
    const v0, 0x40037

    goto/16 :goto_e

    :cond_1dc
    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlsx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xla"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21c

    const-string v2, ".xlsb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_221

    :cond_21c
    const v0, 0x40031

    goto/16 :goto_e

    :cond_221
    const-string v2, ".chm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22e

    const v0, 0x40040

    goto/16 :goto_e

    :cond_22e
    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string v2, ".mht"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24b

    :cond_246
    const v0, 0x40032

    goto/16 :goto_e

    :cond_24b
    const-string v2, ".bat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_258

    const v0, 0x40033

    goto/16 :goto_e

    :cond_258
    const-string v2, ".exe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_265

    const v0, 0x40034

    goto/16 :goto_e

    :cond_265
    const-string v2, ".dll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_272

    const v0, 0x40035

    goto/16 :goto_e

    :cond_272
    const-string v2, ".lib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27f

    const v0, 0x40036

    goto/16 :goto_e

    :cond_27f
    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".ini"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".prop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".conf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".classpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".project"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".php"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".rss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".jsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".asp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".aspx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".vb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".vbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_327

    const-string v2, ".checksum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32c

    :cond_327
    const v0, 0x10001

    goto/16 :goto_e

    :cond_32c
    const-string v2, ".ics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_344

    const-string v2, ".ical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_344

    const-string v2, ".icalendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_349

    :cond_344
    const v0, 0x1004d

    goto/16 :goto_e

    :cond_349
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".tar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".cab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".esi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_381

    const-string v2, ".7z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_386

    :cond_381
    const v0, 0x50038

    goto/16 :goto_e

    :cond_386
    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_393

    const v0, 0x5003a

    goto/16 :goto_e

    :cond_393
    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a0

    const v0, 0x50039

    goto/16 :goto_e

    :cond_3a0
    const-string v2, ".esj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ad

    const v0, 0x4003b

    goto/16 :goto_e

    :cond_3ad
    const-string v2, ".qcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3ba

    const v0, 0x20027

    goto/16 :goto_e

    :cond_3ba
    const-string v2, ".epub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c7

    const v0, 0x4003c

    goto/16 :goto_e

    :cond_3c7
    const-string v2, ".torrent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d4

    const v0, 0x6004b

    goto/16 :goto_e

    :cond_3d4
    const-string v2, ".pgn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e4

    const-string v2, ".xqf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e9

    :cond_3e4
    const v0, 0x5003f

    goto/16 :goto_e

    :cond_3e9
    const-string v2, ".odt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f6

    const v0, 0x5003d

    goto/16 :goto_e

    :cond_3f6
    const-string v2, ".mobi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_406

    const-string v2, ".prc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40b

    :cond_406
    const v0, 0x6004c

    goto/16 :goto_e

    :cond_40b
    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_418

    const v0, 0x3002f

    goto/16 :goto_e

    :cond_418
    const-string v2, ".flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_425

    const v0, 0x2002b

    goto/16 :goto_e

    :cond_425
    const-string v2, ".aif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43d

    const-string v2, "aifc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43d

    const-string v2, "aiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_442

    :cond_43d
    const v0, 0x20029

    goto/16 :goto_e

    :cond_442
    const-string v2, ".ra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_452

    const-string v2, "ram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_457

    :cond_452
    const v0, 0x20028

    goto/16 :goto_e

    :cond_457
    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_464

    const v0, 0x2002a

    goto/16 :goto_e

    :cond_464
    const-string v2, ".flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_474

    const-string v2, ".swf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_479

    :cond_474
    const v0, 0x70001

    goto/16 :goto_e

    :cond_479
    const-string v2, ".nzb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_486

    const v0, 0x80001

    goto/16 :goto_e

    :cond_486
    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_493

    const v0, 0x1004c

    goto/16 :goto_e

    :cond_493
    const-string v2, ".pdb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a0

    const v0, 0x80003

    goto/16 :goto_e

    :cond_4a0
    const-string v2, ".umd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ad

    const v0, 0x80002

    goto/16 :goto_e

    :cond_4ad
    const-string v2, ".ebk2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4ba

    const v0, 0x80004

    goto/16 :goto_e

    :cond_4ba
    const-string v2, ".ebk3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c7

    const v0, 0x80005

    goto/16 :goto_e

    :cond_4c7
    const-string v2, ".3ga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d4

    const v0, 0x2002d

    goto/16 :goto_e

    :cond_4d4
    const-string v2, ".imy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v0, 0x2002e

    goto/16 :goto_e
.end method

.method public static final a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".mp3;.mp4;.3gp;.3gpp;.amr;.mid;.midi;.wmv;.wma;.ogg;.x-ogg;.wav;.m4a;.aac;.rm;.rmvb;.avi;.mpg;.mpeg;.asf;.m4v;.mkv;.ape;.3ga;.imy"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(I)Z
    .registers 2

    const v0, 0x10010

    if-lt p0, v0, :cond_c

    const v0, 0x10014

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final b()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".jpg;.jpeg;.png;.bmp;.gif;.wbmp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(I)Z
    .registers 2

    const v0, 0x10014

    if-eq p0, v0, :cond_c

    const v0, 0x10011

    if-eq p0, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static final b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public static final c()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".apk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(I)Z
    .registers 2

    const v0, 0x10010

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->b(I)Z

    move-result v0

    return v0
.end method

.method public static final d()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(I)Z
    .registers 2

    const v0, 0x20020

    if-lt p0, v0, :cond_c

    const v0, 0x2002e

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->c(I)Z

    move-result v0

    return v0
.end method

.method public static final e(I)Z
    .registers 2

    const v0, 0x30027

    if-lt p0, v0, :cond_a

    const v0, 0x3002f

    if-le p0, v0, :cond_f

    :cond_a
    const v0, 0x70001

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static final e(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->d(I)Z

    move-result v0

    return v0
.end method

.method public static f(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "video/*"

    :cond_10
    return-object v0
.end method

.method public static final f(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->e(I)Z

    move-result v0

    return v0
.end method

.method public static g(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/a/f;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "audio/*"

    :cond_10
    return-object v0
.end method

.method public static final g(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->h(I)Z

    move-result v0

    return v0
.end method

.method public static final h(I)Z
    .registers 2

    const v0, 0x10001

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final h(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->i(I)Z

    move-result v0

    return v0
.end method

.method public static final i(I)Z
    .registers 2

    const v0, 0x50038

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final i(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->j(I)Z

    move-result v0

    return v0
.end method

.method public static final j(I)Z
    .registers 2

    const v0, 0x70001

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final j(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final k(I)Z
    .registers 2

    const v0, 0x50039

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final k(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_30
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final l(I)Z
    .registers 2

    const v0, 0x4003b

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final l(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final m(I)Z
    .registers 2

    const v0, 0x4003c

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final m(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->k(I)Z

    move-result v0

    return v0
.end method

.method public static final n(I)Z
    .registers 2

    const v0, 0x6004c

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final n(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->l(I)Z

    move-result v0

    return v0
.end method

.method public static final o(I)Z
    .registers 2

    const v0, 0x6004b

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final o(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->m(I)Z

    move-result v0

    return v0
.end method

.method public static final p(I)Z
    .registers 2

    const v0, 0x5003f

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final p(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->n(I)Z

    move-result v0

    return v0
.end method

.method public static final q(I)Z
    .registers 2

    const v0, 0x80001

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final q(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80002

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final r(I)Z
    .registers 2

    const v0, 0x5003d

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final r(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80003

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final s(I)Z
    .registers 2

    const v0, 0x40030

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final s(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80004

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final t(I)Z
    .registers 2

    const v0, 0x40031

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final t(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80005

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final u(I)Z
    .registers 2

    const v0, 0x40040

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final u(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->o(I)Z

    move-result v0

    return v0
.end method

.method public static final v(I)Z
    .registers 2

    const v0, 0x40032

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final v(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->p(I)Z

    move-result v0

    return v0
.end method

.method public static final w(I)Z
    .registers 2

    const v0, 0x40037

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final w(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->q(I)Z

    move-result v0

    return v0
.end method

.method public static final x(I)Z
    .registers 2

    const v0, 0x5003a

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final x(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->r(I)Z

    move-result v0

    return v0
.end method

.method public static final y(I)Z
    .registers 2

    const v0, 0x1004d

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final y(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->s(I)Z

    move-result v0

    return v0
.end method

.method public static final z(I)Z
    .registers 2

    const v0, 0x20027

    if-ne p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static final z(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->t(I)Z

    move-result v0

    return v0
.end method
