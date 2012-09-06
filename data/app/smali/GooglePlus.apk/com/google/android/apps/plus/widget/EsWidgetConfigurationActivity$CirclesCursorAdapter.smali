.class Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "EsWidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirclesCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity$CirclesCursorAdapter;->this$0:Lcom/google/android/apps/plus/widget/EsWidgetConfigurationActivity;

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 80
    const v5, 0x7f090287

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, circleName:Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v5, 0x7f090288

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, circleMemberCount:Landroid/widget/TextView;
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 86
    .local v4, semanticHints:I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_44

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_27
    const v5, 0x7f090286

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, circleIcon:Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, id:Ljava/lang/String;
    const-string v5, "v.whatshot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 96
    const v5, 0x7f0201c1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_43
    return-void

    .line 89
    .end local v0           #circleIcon:Landroid/widget/ImageView;
    .end local v3           #id:Ljava/lang/String;
    :cond_44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 98
    .restart local v0       #circleIcon:Landroid/widget/ImageView;
    .restart local v3       #id:Ljava/lang/String;
    :cond_66
    const v5, 0x7f0201b6

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_43
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
