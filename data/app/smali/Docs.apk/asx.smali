.class public Lasx;
.super Ljava/lang/Object;
.source "XmlEntryGDataSerializer.java"

# interfaces
.implements Lasv;


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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lasx;->a:Lasu;

    .line 41
    iput-object p2, p0, Lasx;->a:Lase;

    .line 42
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lasx;->a:Z

    .line 43
    return-void

    .line 42
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

    .line 182
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    :goto_7
    return-void

    .line 185
    :cond_8
    sget-object v0, Last;->p:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
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

    .line 252
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    :cond_d
    :goto_d
    return-void

    .line 255
    :cond_e
    sget-object v0, Last;->t:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    sget-object v0, Last;->v:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    sget-object v0, Last;->v:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    sget-object v0, Last;->u:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    sget-object v0, Last;->u:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
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

    .line 214
    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    :goto_7
    return-void

    .line 217
    :cond_8
    sget-object v0, Last;->i:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    sget-object v0, Last;->h:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    sget-object v0, Last;->j:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-static {p3}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Last;->l:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_22
    invoke-static {p4}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Last;->k:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
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
    invoke-virtual {p0, p1}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 114
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 129
    invoke-direct {p0, p1}, Lasx;->c(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 132
    :cond_8
    if-eq p2, v3, :cond_13

    .line 133
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 136
    :cond_13
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 138
    if-eq p2, v3, :cond_36

    .line 139
    sget-object v0, Last;->f:Ljava/lang/String;

    iget-object v1, p0, Lasx;->a:Lase;

    invoke-virtual {v1}, Lase;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4, v4}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Last;->g:Ljava/lang/String;

    iget-object v1, p0, Lasx;->a:Lase;

    invoke-virtual {v1}, Lase;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Last;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v4}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_36
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->c(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->d(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lasx;->a:Lase;

    invoke-virtual {v1}, Lase;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lasx;->a:Lase;

    invoke-virtual {v1}, Lase;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lasx;->b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez p2, :cond_71

    .line 154
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->e(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 158
    :cond_71
    if-eq p2, v3, :cond_7c

    .line 159
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lasx;->f(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 163
    :cond_7c
    invoke-virtual {p0, p1, p2}, Lasx;->a(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 164
    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    :goto_7
    return-void

    .line 196
    :cond_8
    sget-object v0, Last;->q:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
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

    .line 269
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 281
    :goto_d
    return-void

    .line 273
    :cond_e
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 275
    sget-object v0, Last;->x:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_1e
    invoke-static {p2}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 278
    sget-object v0, Last;->y:Ljava/lang/String;

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    :cond_29
    sget-object v0, Last;->w:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d
.end method

.method private c(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-virtual {v0}, Lase;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 310
    const-string v0, "http://schemas.google.com/g/2005"

    sget-object v1, Last;->k:Ljava/lang/String;

    iget-object v2, p0, Lasx;->a:Lase;

    invoke-virtual {v2}, Lase;->w()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_19
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-static {v0}, Lasl;->b(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 314
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->B:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const/4 v0, 0x0

    sget-object v1, Last;->l:Ljava/lang/String;

    iget-object v2, p0, Lasx;->a:Lase;

    invoke-static {v2}, Lasl;->b(Lase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->B:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    :cond_3f
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-static {v0}, Lasl;->a(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 320
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    iget-object v0, p0, Lasx;->a:Lase;

    invoke-static {v0}, Lasl;->a(Lase;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string v0, "http://schemas.google.com/gdata/batch"

    sget-object v1, Last;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    :cond_62
    return-void
.end method

.method private static c(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    :goto_7
    return-void

    .line 231
    :cond_8
    sget-object v0, Last;->r:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
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

    .line 239
    if-nez p1, :cond_4

    .line 246
    :goto_3
    return-void

    .line 242
    :cond_4
    sget-object v0, Last;->s:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    sget-object v0, Last;->l:Ljava/lang/String;

    sget-object v1, Last;->n:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
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

    .line 287
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 293
    :goto_7
    return-void

    .line 290
    :cond_8
    sget-object v0, Last;->z:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
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

    .line 299
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 305
    :goto_7
    return-void

    .line 302
    :cond_8
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    sget-object v0, Last;->A:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    const-string v0, "application/atom+xml"

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 74
    .line 76
    :try_start_1
    iget-object v0, p0, Lasx;->a:Lasu;

    invoke-interface {v0}, Lasu;->a()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_6} :catch_58

    move-result-object v0

    .line 82
    sget-object v1, Last;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    if-eq p2, v4, :cond_18

    .line 84
    sget-object v1, Last;->e:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 85
    invoke-direct {p0, v0}, Lasx;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 87
    :cond_18
    iget-object v1, p0, Lasx;->a:Lase;

    invoke-virtual {v1}, Lase;->x()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lasx;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 89
    const-string v2, "http://schemas.google.com/g/2005"

    sget-object v3, Last;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const/4 v2, 0x0

    sget-object v3, Last;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_31
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    invoke-direct {p0, v0, p2}, Lasx;->b(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 97
    const-string v1, "http://www.w3.org/2005/Atom"

    sget-object v2, Last;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-virtual {p0}, Lasx;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 100
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Last;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_4f
    if-eq p2, v4, :cond_54

    .line 104
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 106
    :cond_54
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 107
    return-void

    .line 77
    :catch_58
    move-exception v0

    .line 78
    new-instance v1, Lasn;

    const-string v2, "Unable to create XmlSerializer."

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method protected a(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lasx;->a:Z

    return v0
.end method
