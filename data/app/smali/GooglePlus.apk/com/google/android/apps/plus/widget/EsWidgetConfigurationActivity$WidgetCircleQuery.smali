.class public interface abstract Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$WidgetCircleQuery;
.super Ljava/lang/Object;
.source "EsWidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WidgetCircleQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "circle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "circle_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "semantic_hints"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$WidgetCircleQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
