.class Le/r;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(LW/a;)Lg/a;
    .registers 4

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, LW/a;->c(I)I

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LW/a;->b(I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lg/a;->a(Ljava/io/DataInputStream;)Lg/a;

    move-result-object v0

    goto :goto_e
.end method

.method static b(LW/a;)Ljava/util/Map;
    .registers 6

    const/4 v4, 0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v4}, LW/a;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p0, v4, v0}, LW/a;->c(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, LW/a;->b(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    return-object v1
.end method
