.class public Lcom/android/browser/homepages/Template;
.super Ljava/lang/Object;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/homepages/Template$1;,
        Lcom/android/browser/homepages/Template$HashMapEntityData;,
        Lcom/android/browser/homepages/Template$CursorListEntityWrapper;,
        Lcom/android/browser/homepages/Template$ListEntity;,
        Lcom/android/browser/homepages/Template$SimpleEntity;,
        Lcom/android/browser/homepages/Template$StringEntity;,
        Lcom/android/browser/homepages/Template$ListEntityIterator;,
        Lcom/android/browser/homepages/Template$EntityData;,
        Lcom/android/browser/homepages/Template$Entity;
    }
.end annotation


# static fields
.field private static sCachedTemplates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/homepages/Template;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/homepages/Template$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/homepages/Template;->sCachedTemplates:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "tid"

    .prologue
    .line 168
    invoke-static {p1, p2}, Lcom/android/browser/homepages/Template;->readRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/homepages/Template;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "template"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/homepages/Template;->mData:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    .line 173
    invoke-static {p1, p2}, Lcom/android/browser/homepages/Template;->replaceConsts(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/homepages/Template;->parseTemplate(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/browser/homepages/Template$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/browser/homepages/Template;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/browser/homepages/Template;)V
    .registers 3
    .parameter "copy"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/homepages/Template;->mData:Ljava/util/HashMap;

    .line 178
    iget-object v0, p1, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    iput-object v0, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    .line 179
    return-void
.end method

.method public static getCachedTemplate(Landroid/content/Context;I)Lcom/android/browser/homepages/Template;
    .registers 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 40
    sget-object v2, Lcom/android/browser/homepages/Template;->sCachedTemplates:Ljava/util/HashMap;

    monitor-enter v2

    .line 41
    :try_start_3
    sget-object v1, Lcom/android/browser/homepages/Template;->sCachedTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/homepages/Template;

    .line 42
    .local v0, template:Lcom/android/browser/homepages/Template;
    if-nez v0, :cond_1f

    .line 43
    new-instance v0, Lcom/android/browser/homepages/Template;

    .end local v0           #template:Lcom/android/browser/homepages/Template;
    invoke-direct {v0, p0, p1}, Lcom/android/browser/homepages/Template;-><init>(Landroid/content/Context;I)V

    .line 44
    .restart local v0       #template:Lcom/android/browser/homepages/Template;
    sget-object v1, Lcom/android/browser/homepages/Template;->sCachedTemplates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1f
    invoke-virtual {v0}, Lcom/android/browser/homepages/Template;->copy()Lcom/android/browser/homepages/Template;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 48
    .end local v0           #template:Lcom/android/browser/homepages/Template;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private static readRaw(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 273
    .local v2, ins:Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 274
    .local v0, buf:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 275
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19

    .line 277
    .end local v0           #buf:[B
    :goto_18
    return-object v3

    .line 276
    :catch_19
    move-exception v1

    .line 277
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "<html><body>Error</body></html>"

    goto :goto_18
.end method

.method private static replaceConsts(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 237
    const-string v0, "<%@\\s*(\\w+/\\w+)\\s*%>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 239
    const-class v2, Lcom/android/browser/R;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 241
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    :cond_1e
    :goto_1e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 243
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v5, "drawable/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1e

    .line 247
    :cond_47
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    if-eqz v0, :cond_1e

    .line 249
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 250
    invoke-virtual {v1, v0, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 252
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_72

    .line 253
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 254
    float-to-int v5, v0

    .line 255
    int-to-float v6, v5

    cmpl-float v6, v6, v0

    if-nez v6, :cond_6d

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_69
    invoke-virtual {v3, v4, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1e

    .line 258
    :cond_6d
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 260
    :cond_72
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 266
    :cond_7b
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assign(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/browser/homepages/Template;->mData:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public assignLoop(Ljava/lang/String;Lcom/android/browser/homepages/Template$ListEntityIterator;)V
    .registers 4
    .parameter "name"
    .parameter "iter"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/browser/homepages/Template;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method copy()Lcom/android/browser/homepages/Template;
    .registers 2

    .prologue
    .line 182
    new-instance v0, Lcom/android/browser/homepages/Template;

    invoke-direct {v0, p0}, Lcom/android/browser/homepages/Template;-><init>(Lcom/android/browser/homepages/Template;)V

    return-object v0
.end method

.method parseTemplate(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "template"

    .prologue
    .line 186
    const-string v9, "<%([=\\{])\\s*(\\w+)\\s*%>"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 187
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 188
    .local v1, m:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 189
    .local v5, start:I
    :goto_b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 190
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {p2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, static_part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_29

    .line 192
    iget-object v9, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    new-instance v10, Lcom/android/browser/homepages/Template$StringEntity;

    invoke-direct {v10, v6}, Lcom/android/browser/homepages/Template$StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_29
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, type:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, name:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 197
    iget-object v9, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    new-instance v10, Lcom/android/browser/homepages/Template$SimpleEntity;

    invoke-direct {v10, v2}, Lcom/android/browser/homepages/Template$SimpleEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_45
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 211
    goto :goto_b

    .line 198
    :cond_4a
    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 199
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<%\\}\\s*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\s*%>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 200
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 201
    .local v0, end_m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 202
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 203
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 204
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {p2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, subTemplate:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    new-instance v10, Lcom/android/browser/homepages/Template$ListEntity;

    invoke-direct {v10, p1, v2, v7}, Lcom/android/browser/homepages/Template$ListEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 207
    goto/16 :goto_b

    .line 212
    .end local v0           #end_m:Ljava/util/regex/Matcher;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v6           #static_part:Ljava/lang/String;
    .end local v7           #subTemplate:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_a8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 213
    .restart local v6       #static_part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c0

    .line 214
    iget-object v9, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    new-instance v10, Lcom/android/browser/homepages/Template$StringEntity;

    invoke-direct {v10, v6}, Lcom/android/browser/homepages/Template$StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_c0
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/android/browser/homepages/Template$HashMapEntityData;

    iget-object v1, p0, Lcom/android/browser/homepages/Template;->mData:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/android/browser/homepages/Template$HashMapEntityData;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/homepages/Template;->write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V

    .line 228
    return-void
.end method

.method public write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V
    .registers 6
    .parameter "stream"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/browser/homepages/Template;->mTemplate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/homepages/Template$Entity;

    .line 232
    .local v0, ent:Lcom/android/browser/homepages/Template$Entity;
    invoke-interface {v0, p1, p2}, Lcom/android/browser/homepages/Template$Entity;->write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V

    goto :goto_6

    .line 234
    .end local v0           #ent:Lcom/android/browser/homepages/Template$Entity;
    :cond_16
    return-void
.end method
