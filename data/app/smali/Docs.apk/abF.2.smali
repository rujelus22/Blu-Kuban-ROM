.class public abstract enum LabF;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LabF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LabF;

.field private static final synthetic a:[LabF;

.field public static final enum b:LabF;

.field public static final enum c:LabF;

.field public static final enum d:LabF;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, LabG;

    const-string v1, "HOME_SCREEN"

    sget v2, LcS;->widget_home:I

    invoke-direct {v0, v1, v3, v2}, LabG;-><init>(Ljava/lang/String;II)V

    sput-object v0, LabF;->a:LabF;

    .line 37
    new-instance v0, LabH;

    const-string v1, "NEW_DOC"

    sget v2, LcS;->widget_newdoc:I

    invoke-direct {v0, v1, v4, v2}, LabH;-><init>(Ljava/lang/String;II)V

    sput-object v0, LabF;->b:LabF;

    .line 47
    new-instance v0, LabI;

    const-string v1, "NEW_DOC_FROM_CAMERA"

    sget v2, LcS;->widget_newdocfromcamera:I

    invoke-direct {v0, v1, v5, v2}, LabI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LabF;->c:LabF;

    .line 58
    new-instance v0, LabJ;

    const-string v1, "STARRED"

    sget v2, LcS;->widget_starred:I

    invoke-direct {v0, v1, v6, v2}, LabJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LabF;->d:LabF;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [LabF;

    sget-object v1, LabF;->a:LabF;

    aput-object v1, v0, v3

    sget-object v1, LabF;->b:LabF;

    aput-object v1, v0, v4

    sget-object v1, LabF;->c:LabF;

    aput-object v1, v0, v5

    sget-object v1, LabF;->d:LabF;

    aput-object v1, v0, v6

    sput-object v0, LabF;->a:[LabF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, LabF;->a:I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILabG;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, LabF;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 112
    const-string v0, "null accountName for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 114
    const-string v0, "accountName"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_18
    const-string v0, "referrer"

    const-string v1, "/widget"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/google/android/apps/docs/providers/DocListProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    const/high16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    const/high16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 130
    invoke-static {}, LabF;->values()[LabF;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)LabF;
    .registers 2
    .parameter

    .prologue
    .line 28
    const-class v0, LabF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LabF;

    return-object v0
.end method

.method public static values()[LabF;
    .registers 1

    .prologue
    .line 28
    sget-object v0, LabF;->a:[LabF;

    invoke-virtual {v0}, [LabF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LabF;

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, LabF;->ordinal()I

    move-result v0

    return v0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p1, p0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2, p0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0, p1, p2}, LabF;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-static {v0, p2}, LabF;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, LabF;->a()I

    move-result v1

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public final a(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p2, p3}, LabF;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 97
    invoke-virtual {p0, p2}, LabF;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 98
    iget v1, p0, LabF;->a:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    :goto_f
    return-void

    .line 100
    :cond_10
    iget v0, p0, LabF;->a:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_f
.end method

.method a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
