.class public LSA;
.super Laso;
.source "DocsListGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Laso;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected a()LSr;
    .registers 2

    .prologue
    .line 73
    new-instance v0, LSr;

    invoke-direct {v0}, LSr;-><init>()V

    return-object v0
.end method

.method protected a()LSs;
    .registers 2

    .prologue
    .line 68
    new-instance v0, LSs;

    invoke-direct {v0}, LSs;-><init>()V

    return-object v0
.end method

.method public a(Lase;)LSs;
    .registers 3
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Laso;->a(Lase;)Lase;

    move-result-object v0

    check-cast v0, LSs;

    return-object v0
.end method

.method protected bridge synthetic a()Lase;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, LSA;->a()LSs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lase;)Lase;
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, LSA;->a(Lase;)LSs;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a()Lasf;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, LSA;->a()LSr;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lase;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x3a

    .line 168
    invoke-virtual {p0}, LSA;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 170
    instance-of v0, p1, LSs;

    if-nez v0, :cond_13

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected DocEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_13
    check-cast p1, LSs;

    .line 175
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v4, "http://schemas.google.com/g/2005"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 178
    const-string v3, "resourceId"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 179
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_4c
    invoke-virtual {p1, v0}, LSs;->b(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1, v1}, LSs;->c(Ljava/lang/String;)V

    .line 222
    :cond_52
    :goto_52
    return-void

    .line 190
    :cond_53
    const-string v1, "lastViewed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 191
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LSs;->e(Ljava/lang/String;)V

    goto :goto_52

    .line 192
    :cond_63
    const-string v1, "lastModifiedBy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 193
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 194
    invoke-static {v2, v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v0

    :goto_73
    if-eqz v0, :cond_52

    .line 196
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 197
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, LSs;->h(Ljava/lang/String;)V

    .line 195
    :cond_84
    :goto_84
    invoke-static {v2, v1}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_73

    .line 199
    :cond_89
    const-string v3, "email"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 200
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p1, v0}, LSs;->i(Ljava/lang/String;)V

    goto :goto_84

    .line 205
    :cond_99
    const-string v4, "http://schemas.google.com/docs/2007"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 206
    const-string v3, "removed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LSs;->d(Z)V

    goto :goto_52

    .line 208
    :cond_ae
    const-string v3, "changestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 209
    const-string v0, "value"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, LSs;->a(I)V

    goto :goto_52

    .line 211
    :cond_c4
    const-string v1, "md5Checksum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 212
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, LSs;->d(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 214
    :cond_d5
    const-string v1, "sharedWithMeDate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 215
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, LSs;->f(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 217
    :cond_e6
    const-string v1, "modifiedByMeDate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 218
    invoke-static {v2}, Lash;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, LSs;->g(Ljava/lang/String;)V

    goto/16 :goto_52
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lase;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3a

    const/4 v4, 0x0

    .line 133
    const-string v0, "http://schemas.google.com/docs/2007#parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 134
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v0, ""

    .line 140
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_2f
    sget-object v2, LkU;->h:LkU;

    invoke-virtual {v2}, LkU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 146
    invoke-virtual {p0}, LSA;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Last;->q:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_4e

    .line 148
    check-cast p4, LSs;

    .line 149
    invoke-virtual {p4, v1, v0}, LSs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_4d
    :goto_4d
    return-void

    .line 152
    :cond_4e
    const-string v0, "DocsListGDataParser"

    const-string v2, "Parent folder with resourceId %s has no title: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 155
    :cond_5f
    const-string v0, "DocsListGDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing parent entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 157
    :cond_78
    const-string v0, "http://schemas.google.com/docs/2007/thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 158
    check-cast p4, LSs;

    .line 159
    invoke-virtual {p4, p3}, LSs;->j(Ljava/lang/String;)V

    goto :goto_4d

    .line 160
    :cond_86
    instance-of v0, p4, LSs;

    if-eqz v0, :cond_4d

    .line 161
    check-cast p4, LSs;

    .line 162
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, LSs;->a(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4d
.end method

.method protected a(Lase;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0}, LSA;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 103
    instance-of v0, p1, LSs;

    if-nez v0, :cond_11

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected DocEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v0, p1

    .line 107
    check-cast v0, LSs;

    .line 108
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 110
    sget-object v4, Last;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 111
    const/4 v3, 0x0

    sget-object v4, Last;->x:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v3, "http://schemas.google.com/g/2005/labels#starred"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 113
    invoke-virtual {v0, v1}, LSs;->a(Z)V

    move v0, v1

    .line 128
    :goto_33
    return v0

    .line 117
    :cond_34
    const-string v3, "http://schemas.google.com/g/2005/labels#shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 118
    invoke-virtual {v0, v1}, LSs;->b(Z)V

    move v0, v1

    .line 119
    goto :goto_33

    .line 122
    :cond_41
    const-string v3, "http://schemas.google.com/g/2005/labels#hidden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 123
    invoke-virtual {v0, v1}, LSs;->c(Z)V

    move v0, v1

    .line 124
    goto :goto_33

    .line 128
    :cond_4e
    invoke-super {p0, p1}, Laso;->a(Lase;)Z

    move-result v0

    goto :goto_33
.end method

.method public a(Lasf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, LSA;->a()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 80
    instance-of v0, p1, LSr;

    if-nez v0, :cond_11

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected DocEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v0, p1

    .line 84
    check-cast v0, LSr;

    .line 85
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    sget-object v3, Last;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 88
    sget-object v2, Last;->h:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 90
    sget-object v2, Last;->j:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, LSr;->a(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_38
    return v0

    :cond_39
    invoke-super {p0, p1}, Laso;->a(Lasf;)Z

    move-result v0

    goto :goto_38
.end method
