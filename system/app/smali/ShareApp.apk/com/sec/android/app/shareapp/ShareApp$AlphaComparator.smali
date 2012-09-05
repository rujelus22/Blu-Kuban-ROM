.class Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 3
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 830
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 833
    if-nez p1, :cond_c

    move-object v0, v1

    .line 834
    .local v0, aName:Ljava/lang/String;
    :goto_4
    if-nez p2, :cond_1b

    .line 837
    .local v1, bName:Ljava/lang/String;
    :goto_6
    if-eqz p1, :cond_a

    if-nez v0, :cond_2a

    :cond_a
    const/4 v2, -0x1

    .line 839
    :goto_b
    return v2

    .line 833
    .end local v0           #aName:Ljava/lang/String;
    .end local v1           #bName:Ljava/lang/String;
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 834
    .restart local v0       #aName:Ljava/lang/String;
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 838
    .restart local v1       #bName:Ljava/lang/String;
    :cond_2a
    if-eqz p2, :cond_2e

    if-nez v1, :cond_30

    :cond_2e
    const/4 v2, 0x1

    goto :goto_b

    .line 839
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 829
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
