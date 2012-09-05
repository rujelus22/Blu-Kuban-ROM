.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public collapseCount:I

.field public contactId:J

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public dateType:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public id:J

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public isFirst:Z

.field public isPrimary:Z

.field public label:Ljava/lang/String;

.field public maxLabelLines:I

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    .line 1163
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 1165
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 1167
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    .line 1171
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    .line 1173
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    .line 1177
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1179
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1191
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    .line 1196
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->dateType:Ljava/lang/String;

    .line 1199
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>()V

    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JJLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .registers 14
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 1206
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>()V

    .line 1207
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    iput-object p0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    .line 1208
    iput-wide p3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->contactId:J

    .line 1209
    iput-wide p5, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1210
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 1211
    iput-object p1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    .line 1212
    const/4 v3, 0x0

    invoke-static {p2, p7, v3, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildActionString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1213
    invoke-static {p2, p7, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1215
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_60

    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1216
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p7, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1217
    iget-object v3, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 1218
    .local v2, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    if-ne v3, v4, :cond_42

    .line 1219
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_61

    .line 1221
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1230
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_60
    :goto_60
    return-object v0

    .line 1224
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_61
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    goto :goto_60
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .registers 4
    .parameter "status"
    .parameter "fillData"

    .prologue
    .line 1311
    if-eqz p2, :cond_1a

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1312
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 1316
    :cond_1a
    return-object p0
.end method

.method public collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .registers 6
    .parameter "entry"

    .prologue
    const/4 v1, 0x1

    .line 1321
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1322
    const/4 v1, 0x0

    .line 1348
    :goto_8
    return v1

    .line 1326
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_23

    .line 1328
    iget v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    .line 1329
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    .line 1333
    :cond_23
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    .line 1334
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    iget v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    .line 1340
    iget-boolean v0, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    if-eqz v0, :cond_50

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseCount:I

    goto :goto_8

    .line 1340
    :cond_50
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isPrimary:Z

    goto :goto_3c
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1160
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->collapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z
    .registers 8
    .parameter "entry"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    iget-object v3, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    iget v5, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->type:I

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1354
    const/4 v0, 0x0

    .line 1357
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1160
    check-cast p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->shouldCollapseWith(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Z

    move-result v0

    return v0
.end method
