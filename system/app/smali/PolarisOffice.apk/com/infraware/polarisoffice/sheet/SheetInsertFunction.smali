.class public Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SheetInsertFunction.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_SHEET_EDITOR_STATUS;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private ap1:Landroid/widget/SimpleAdapter;

.field private ap2:Landroid/widget/SimpleAdapter;

.field private downList:[Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private lv:Landroid/widget/ListView;

.field private mEt_funtion:Landroid/widget/EditText;

.field private m_nSortType:I

.field private m_viewEmpty:Landroid/widget/TextView;

.field private matches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private upList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 21
    const-string v0, "SheetInsertFunction"

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->LOG_CAT:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->list:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    .line 26
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;

    .line 28
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap1:Landroid/widget/SimpleAdapter;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap2:Landroid/widget/SimpleAdapter;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->mEt_funtion:Landroid/widget/EditText;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)Landroid/widget/SimpleAdapter;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap2:Landroid/widget/SimpleAdapter;

    return-object v0
.end method


# virtual methods
.method public getMatches(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .parameter "strKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    const-string v1, ""

    if-ne p1, v1, :cond_b

    .line 159
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    .line 160
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    .line 168
    :goto_a
    return-object v1

    .line 163
    :cond_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_19

    .line 168
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    goto :goto_a

    .line 165
    :cond_19
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_42

    .line 166
    :cond_35
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f03004b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 37
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->setContentView(I)V

    .line 40
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->setTitle(I)V

    .line 42
    const v0, 0x7f0c01cb

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0c01ca

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_viewEmpty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    const v0, 0x7f0c01c9

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->mEt_funtion:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->mEt_funtion:Landroid/widget/EditText;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$1;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->onMakeList()V

    .line 78
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->list:Ljava/util/ArrayList;

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    const-string v1, "definition"

    aput-object v1, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_8e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap1:Landroid/widget/SimpleAdapter;

    .line 79
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v7

    const-string v1, "definition"

    aput-object v1, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_96

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap2:Landroid/widget/SimpleAdapter;

    .line 81
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->ap1:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->lv:Landroid/widget/ListView;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction$2;-><init>(Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void

    .line 78
    :array_8e
    .array-data 0x4
        0xc7t 0x1t 0xct 0x7ft
        0xc8t 0x1t 0xct 0x7ft
    .end array-data

    .line 79
    :array_96
    .array-data 0x4
        0xc7t 0x1t 0xct 0x7ft
        0xc8t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 173
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->setTitle(I)V

    .line 174
    return-void
.end method

.method public onMakeList()V
    .registers 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_12

    .line 101
    const-string v5, "key_sortType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    .line 102
    :cond_12
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    .local v4, res:Landroid/content/res/Resources;
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    if-nez v5, :cond_33

    .line 105
    const v5, 0x7f06002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 106
    const v5, 0x7f06002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    .line 145
    :cond_2c
    :goto_2c
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    array-length v0, v5

    .line 148
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    if-lt v2, v0, :cond_111

    .line 155
    return-void

    .line 108
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_33
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4b

    .line 109
    const v5, 0x7f06002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 110
    const v5, 0x7f06002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto :goto_2c

    .line 112
    :cond_4b
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_63

    .line 113
    const v5, 0x7f06002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 114
    const v5, 0x7f060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto :goto_2c

    .line 116
    :cond_63
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7b

    .line 117
    const v5, 0x7f060031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 118
    const v5, 0x7f060032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto :goto_2c

    .line 120
    :cond_7b
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_93

    .line 121
    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 122
    const v5, 0x7f060034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto :goto_2c

    .line 124
    :cond_93
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_ab

    .line 125
    const v5, 0x7f060035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 126
    const v5, 0x7f060036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto :goto_2c

    .line 128
    :cond_ab
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_c4

    .line 129
    const v5, 0x7f060037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 130
    const v5, 0x7f060038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto/16 :goto_2c

    .line 132
    :cond_c4
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_dd

    .line 133
    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 134
    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto/16 :goto_2c

    .line 136
    :cond_dd
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f7

    .line 137
    const v5, 0x7f06003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 138
    const v5, 0x7f06003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto/16 :goto_2c

    .line 140
    :cond_f7
    iget v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->m_nSortType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2c

    .line 141
    const v5, 0x7f06003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    .line 142
    const v5, 0x7f06003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    goto/16 :goto_2c

    .line 149
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_111
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 150
    .local v3, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "title"

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->upList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "definition"

    iget-object v6, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->downList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetInsertFunction;->matches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_30
.end method
