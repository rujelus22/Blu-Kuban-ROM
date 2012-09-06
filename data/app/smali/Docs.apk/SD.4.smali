.class public LSD;
.super Ljava/lang/Object;
.source "DocsXmlEntryGDataSerializer.java"

# interfaces
.implements LSz;


# instance fields
.field private final a:Lase;

.field private final a:Lasu;

.field private final a:Z


# direct methods
.method public constructor <init>(Lasu;Lase;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LSD;->a:Lasu;

    .line 47
    iput-object p2, p0, LSD;->a:Lase;

    .line 48
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, LSD;->a:Z

    .line 49
    return-void

    .line 48
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    :goto_7
    return-void

    .line 182
    :cond_8
    sget-object v0, Last;->p:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    sget-object v0, Last;->p:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    :cond_d
    :goto_d
    return-void

    .line 252
    :cond_e
    sget-object v0, Last;->t:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    sget-object v0, Last;->v:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    sget-object v0, Last;->v:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    sget-object v0, Last;->u:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    sget-object v0, Last;->u:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    sget-object v0, Last;->t:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method protected static a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    :goto_7
    return-void

    .line 214
    :cond_8
    sget-object v0, Last;->i:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    sget-object v0, Last;->h:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    sget-object v0, Last;->j:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    invoke-static {p3}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Last;->l:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_22
    invoke-static {p4}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Last;->k:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    :cond_2d
    sget-object v0, Last;->i:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter

    .prologue
    .line 111
    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/Atom"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "gd"

    const-string v1, "http://schemas.google.com/g/2005"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 114
    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    :goto_7
    return-void

    .line 193
    :cond_8
    sget-object v0, Last;->q:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    sget-object v0, Last;->q:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    :goto_d
    return-void

    .line 270
    :cond_e
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 272
    sget-object v0, Last;->x:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    :cond_1e
    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 275
    sget-object v0, Last;->y:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_29
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method private c(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 307
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Last;->k:Ljava/lang/String;

    iget-object v2, p0, LSD;->a:Lase;

    invoke-virtual {v2}, Lase;->w()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_19
    iget-object v0, p0, LSD;->a:Lase;

    invoke-static {v0}, Lasl;->b(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 311
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->B:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    const/4 v0, 0x0

    sget-object v1, Last;->l:Ljava/lang/String;

    iget-object v2, p0, LSD;->a:Lase;

    invoke-static {v2}, Lasl;->b(Lase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->B:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    :cond_3f
    iget-object v0, p0, LSD;->a:Lase;

    invoke-static {v0}, Lasl;->a(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 317
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    iget-object v0, p0, LSD;->a:Lase;

    invoke-static {v0}, Lasl;->a(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    :cond_62
    return-void
.end method

.method private c(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 127
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 128
    invoke-direct {p0, p1}, LSD;->c(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 131
    :cond_8
    if-eq p2, v3, :cond_13

    .line 132
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 135
    :cond_13
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 137
    if-eq p2, v3, :cond_36

    .line 138
    sget-object v0, Last;->f:Ljava/lang/String;

    iget-object v1, p0, LSD;->a:Lase;

    invoke-virtual {v1}, Lase;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4, v4}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Last;->g:Ljava/lang/String;

    iget-object v1, p0, LSD;->a:Lase;

    invoke-virtual {v1}, Lase;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Last;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v4}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_36
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->c(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->d(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSD;->a:Lase;

    invoke-virtual {v1}, Lase;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LSD;->a:Lase;

    invoke-virtual {v1}, Lase;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, LSD;->b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez p2, :cond_71

    .line 153
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->e(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 157
    :cond_71
    if-eq p2, v3, :cond_7c

    .line 158
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LSD;->f(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 162
    :cond_7c
    invoke-virtual {p0, p1, p2}, LSD;->b(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 163
    return-void
.end method

.method private static c(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    :goto_7
    return-void

    .line 228
    :cond_8
    sget-object v0, Last;->r:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    sget-object v0, Last;->r:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static d(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 236
    if-nez p1, :cond_4

    .line 243
    :goto_3
    return-void

    .line 239
    :cond_4
    sget-object v0, Last;->s:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    sget-object v0, Last;->l:Ljava/lang/String;

    sget-object v1, Last;->n:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    sget-object v0, Last;->s:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3
.end method

.method private static e(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 290
    :goto_7
    return-void

    .line 287
    :cond_8
    sget-object v0, Last;->z:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    sget-object v0, Last;->z:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method private static f(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    :goto_7
    return-void

    .line 299
    :cond_8
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method


# virtual methods
.method protected a()Lase;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LSD;->a:Lase;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 99
    .line 101
    :try_start_0
    iget-object v0, p0, LSD;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    .line 105
    sget-object v1, Last;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0, p2}, LSD;->a(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 107
    return-void

    .line 102
    :catch_f
    move-exception v0

    .line 103
    new-instance v1, Lasn;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method a(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    return-void
.end method

.method public a(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 72
    if-eq p2, v3, :cond_d

    .line 73
    sget-object v0, Last;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    invoke-direct {p0, p1}, LSD;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 76
    :cond_d
    iget-object v0, p0, LSD;->a:Lase;

    invoke-virtual {v0}, Lase;->x()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, LSD;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 78
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Last;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const/4 v1, 0x0

    sget-object v2, Last;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    :cond_26
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-direct {p0, p1, p2}, LSD;->c(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 84
    const-string v0, "http://www.w3.org/2005/Atom"

    sget-object v1, Last;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-virtual {p0}, LSD;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 87
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Last;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    :cond_44
    if-eq p2, v3, :cond_49

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 93
    :cond_49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 94
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, LSD;->a:Z

    return v0
.end method

.method protected b(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 176
    return-void
.end method
