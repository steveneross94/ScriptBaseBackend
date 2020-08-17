# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.integer "brand_name_id"
# t.string "name"
# t.integer "price"

# t.integer "brand_name_id"
# t.string "name"
# t.integer "price"
# t.string "description"

User.delete_all
Prescription.delete_all
Generic.delete_all
Alternative.delete_all
BrandName.delete_all

# BrandName.create(name: , common_name: , price: , description: , ndc_num: , generic_option: , side_effects: )

BrandName.create(name: "Novolog", common_name: "insulin aspart", price: "665", description: "used to treat diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0169-7501-11", generic_option: true, side_effects: "allergic reactions like skin rash, itching or hives, swelling of the face, lips, or tongue; breathing problems; signs and symptoms of high blood sugar such as dizziness, dry mouth, dry skin, fruity breath, nausea, stomach pain, increased hunger or thirst, increased urination; signs and symptoms of low blood sugar such as feeling anxious, confusion, dizziness, increased hunger, unusually weak or tired, sweating, shakiness, cold, irritable, headache, blurred vision, fast heartbeat, loss of consciousness; increase or decrease in fatty tissue under the skin due to overuse of a particular injection site; itching, burning, swelling, or rash at site where injected")
Generic.create(brand_name_id: BrandName.find_by(name: "Novolog").id, name: 'Insulin Aspart', price: "340")
BrandName.create(name: "Apidra", common_name: "insulin glulisine", price: "723", description: "helps to control blood sugar levels in diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0088-2500-33", generic_option: false, side_effects: "anxiety; blurred vision; body aches or pain; chills; cold sweats; confusion; cool, pale skin; cough; depression; difficulty with breathing; dizziness; ear congestion; fast heartbeat; headache; increased hunger; loss of consciousness; loss of voice; nasal congestion; nightmares; runny nose; seizures; shakiness; slurred speech; sneezing; sore throat; unusual tiredness or weakness")
BrandName.create(name: "Humalog", common_name: "insulin lispro", price: "325", description: "helps to control blood sugar levels in diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "00002-7516-59", generic_option: true, side_effects: "anxious or nervous feeling; behavior change similar to being drunk; blurred vision; chills; cold sweats; confusion or difficulty thinking; depression; dizziness or lightheadedness; drowsiness; excessive hunger; fast heartbeat; fever; headache; irritability or abnormal behavior; lower back or side pain; nightmares; painful or difficult urination; restless sleep; seizures; shakiness; slurred speech; tingling in the hands, feet, lips, or tongue")
Generic.create(brand_name_id: BrandName.find_by(name: "Humalog").id, name: 'Insulin Lispro', price: "165")
BrandName.create(name: "Levemir", common_name: "insulin detemir", price: "621", description: "used to treat diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0169-3687-12", generic_option: false, side_effects: "anxiety; blurred vision; chills; cold sweats; confusion; cool, pale skin; cough; depression; difficulty swallowing; dizziness; fast heartbeat; fever; headache; hives; hoarseness; increased hunger;irritation; itching; joint pain; nausea; nightmares; puffiness or swelling of the eyelids or around the eyes, face, lips, or tongue; redness of the skin; seizures; shakiness; skin rash; slurred speech; stiffness or swelling; swelling of the eyelids, face, lips, hands, or feet; tightness in the chest; trouble breathing; unusual tiredness or weakness")
BrandName.create(name: "Novolin R", common_name: "human insulin", price: "188", description: "helps to control blood sugar levels in diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0169-1833-11", generic_option: false, side_effects: "anxiety; blurred vision; chills; cold sweats; confusion; convulsions; cool, pale skin; cough; decreased urine; depression; difficulty with swallowing; dizziness; dry mouth; fast heartbeat; flushing or redness of the skin; headache; hives, itching, or rash; increased hunger; increased thirst; irregular heartbeat; loss of appetite; muscle pain or cramps; nausea; nightmares; numbness or tingling in the hands, feet, or lips; puffiness or swelling of the eyelids or around the eyes, face, lips, or tongue; seizures; shakiness; slurred speech; sweating; swelling; tightness in the chest; unusual tiredness or weakness; unusually warm skin")
BrandName.create(name: "Humulin R", common_name: "human insulin", price: "198", description: "helps to control blood sugar levels in diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0002-8215-01", generic_option: false, side_effects: "anxiety; blurred vision; chills; cold sweats; confusion; convulsions; cool, pale skin; cough; decreased urine; depression; difficulty with swallowing; dizziness; dry mouth; fast heartbeat; flushing or redness of the skin; headache; hives, itching, or rash; increased hunger; increased thirst; irregular heartbeat; loss of appetite; muscle pain or cramps; nausea; nightmares; numbness or tingling in the hands, feet, or lips; puffiness or swelling of the eyelids or around the eyes, face, lips, or tongue; seizures; shakiness; slurred speech; sweating; swelling; tightness in the chest; unusual tiredness or weakness; unusually warm skin")
BrandName.create(name: "Toujeo", common_name: "insulin glargine", price: "509", description: "helps to control blood sugar levels in diabetes mellitus, including diabetes type 1 and diabetes type 2", ndc_num: "0024-5869", generic_option: false, side_effects: "allergic reactions like skin rash, itching or hives, swelling of the face, lips, or tongue; breathing problems; signs and symptoms of high blood sugar such as dizziness, dry mouth, dry skin, fruity breath, nausea, stomach pain, increased hunger or thirst, increased urination; signs and symptoms of low blood sugar such as feeling anxious, confusion, dizziness, increased hunger, unusually weak or tired, sweating, shakiness, cold, irritable, headache, blurred vision, fast heartbeat, loss of consciousness; increase or decrease in fatty tissue under the skin due to overuse of a particular injection site; itching, burning, swelling, or rash at site where injected")
BrandName.create(name: 'Alkeran', common_name: "melphalan", price: "603", description: "used to treat multiple myeloma and ovarian cancer", ndc_num: "52609-0001-5", generic_option: true, side_effects: "allergic reactions like skin rash, itching or hives, swelling of the face, lips, or tongue; breathing problems; blurred vision; diarrhea; dizziness; fast heartbeat; low blood counts - this medicine may decrease the number of white blood cells, red blood cells and platelets. You may be at increased risk for infections and bleeding; missed menstrual periods; mouth sores; nausea, vomiting; signs of infection - fever or chills, cough, sore throat, pain or difficulty passing urine; signs of decreased platelets or bleeding - bruising, pinpoint red spots on the skin, black, tarry stools, blood in the urine; signs of decreased red blood cells - unusually weak or tired, fainting spells, lightheadedness; signs and symptoms of liver injury like dark yellow or brown urine; general ill feeling or flu-like symptoms; light-colored stools; loss of appetite; nausea; right upper belly pain; unusually weak or tired; yellowing of the eyes or skin; weight loss")
Generic.create(brand_name_id: BrandName.find_by(name: "Alkeran").id, name: 'Melphalan', price: "179")
BrandName.create(name: 'Chlorambucil', common_name: 'leukeran', price: "385", description: 'used to treat cancer like some leukemias and lymphomas', ndc_num: '76388-635-25', generic_option: false, side_effects: 'Black, tarry stools; bleeding gums; blood in the urine or stools; chest pain; cough or hoarseness, accompanied by fever or chills; fever or chills; lower back or side pain, accompanied by fever or chills; painful or difficult urination, accompanied by fever or chills; pinpoint red spots on the skin; shortness of breath; sores, ulcers, or white spots on the lips or in the mouth; swollen glands; troubled breathing with exertion; unusual bleeding or bruising; unusual tiredness or weakness; Less common; Itching; joint pain; large, swollen hives; skin rash; swelling of the feet or lower legs; Rare; Blistering, peeling, or loosening of the skin; diarrhea; muscle pain; muscle twitching; red skin lesions, often with a purple center; red, irritated eyes; seizures; shakiness and unsteady walk; shakiness in the legs, arms, hands, or feet; sore throat; sudden jerky movements of the body; unsteadiness, trembling, or other problems with muscle control or coordination; Incidence not known; Abdominal or stomach pain or tenderness; bone pain; clay colored stools; dark urine; decreased appetite; difficult breathing; headache; large, hive-like swelling on the face, eyelids, lips, tongue, throat, hands, legs, feet, or sex organs; loss of appetite; trouble getting pregnant; troubled or quick, shallow breathing; yellow eyes or skin')
BrandName.create(name: 'Rheumatrex', common_name: 'methotrexate', price: "no longer available", description: 'used to treat cancer including breast cancer, leukemia, and lymphoma. It can also be used to treat psoriasis and certain kinds of arthritis', ndc_num: '67253-580-42', generic_option: true, side_effects: 'Black, tarry stools; blood in the urine or stools; bloody vomit; diarrhea; joint pain; reddening of the skin; sores in the mouth or lips; stomach pain; swelling of the feet or lower legs; Less common; Back pain; blurred vision; confusion; convulsions; cough or hoarseness; dark urine; dizziness; drowsiness; fever or chills; headache; lower back or side pain; painful or difficult urination; pinpoint red spots on the skin; shortness of breath; unusual bleeding or bruising; unusual tiredness or weakness; yellow eyes or skin; Hair loss, temporary; loss of appetite; nausea or vomiting; Less common; Acne; boils on skin; pale skin; skin rash or itching')
Generic.create(brand_name_id: BrandName.find_by(name: "Rheumatrex").id, name: 'Methotrexate', price: "87")
BrandName.create(name: 'Zoloft', common_name: 'sertraline', price: "462", description: 'used to treat depression. It may also be used to treat obsessive compulsive disorder, panic disorder, post-trauma stress, premenstrual dysphoric disorder (PMDD), or social anxiety', ndc_num: '00049-4940', generic_option: true, alternative_option: true, side_effects: 'Feeling of heart pounding; Nausea; Loss of appetite; Indigestion; Vomiting; Low appetite; Sleepiness; Trouble sleeping; Low sex drive; Inability to ejaculate; Visual problems; Diarrhea; Dry mouth; Constipation; Tiredness; Dizziness; Shaking; Agitation; Problems with ejaculation; Erectile dysfunction')
Generic.create(brand_name_id: BrandName.find_by(name: 'Zoloft').id, name: 'Sertraline', price: "31")
Alternative.create(brand_name_id: BrandName.find_by(name: 'Zoloft').id, name: 'Cognitive Behavioral Therapy', description: 'focuses on challenging and changing unhelpful cognitive distortions and behaviors, improving emotional regulation, and the development of personal coping strategies that target solving current problems', price: "100")
BrandName.create(name: 'Prozac', common_name: 'fluoxetine', price: "604", description: 'used to treat mood problems such as depression, obsessive compulsive disorder, and panic attacks. It can also treat certain eating disorders',ndc_num: '0777-3107-30', generic_option: true, alternative_option: true, side_effects: 'Lack of energy; Flushing; Diarrhea; Dry mouth; Difficulty sleeping; Nervousness; Tremor; Sore throat; Rash; Flu-like symptoms; Nausea; Loss of appetite; Indigestion; Anxiety; Sleepiness; Low sex drive; Sweating')
Generic.create(brand_name_id: BrandName.find_by(name: 'Prozac').id, name: 'Fluoxetine', price: "10")
Alternative.create(brand_name_id: BrandName.find_by(name: 'Prozac').id, name: 'Psychodynamic psychotherapy', description: "a form of depth psychology, the primary focus of which is to reveal the unconscious content of a client's psyche in an effort to alleviate psychic tension", price: "150")
BrandName.create(name: 'Topamax', common_name: 'topiramate', price: "487", description: 'used to treat seizures in adults or children with epilepsy. It is also used for the prevention of migraine headaches, as well as serving as a mood stabilizer for individuals with borderline personality disorder(BPD)', ndc_num: '50458-641-65', generic_option: true, alternative_option: true , side_effects: 'Any vision problems, especially blurred vision, double vision, eye pain, or rapidly decreasing vision; burning, prickling, or tingling sensations; clumsiness or unsteadiness; confusion; continuous, uncontrolled back-and-forth or rolling eye movements; dizziness; drowsiness; eye redness; generalized slowing of mental and physical activity; increased eye pressure; memory problems; menstrual changes; menstrual pain; nervousness; speech or language problems; trouble in concentrating or paying attention; unusual tiredness or weakness; Less common; Abdominal or stomach pain; fever, chills, or sore throat; lessening of sensations or perception; loss of appetite; mood or mental changes, including aggression, agitation, apathy, irritability, and mental depression; red, irritated, or bleeding gums; weight loss')
Generic.create(brand_name_id: BrandName.find_by(name: 'Topamax').id, name: 'Topimarate', price: "22")
Alternative.create(brand_name_id: BrandName.find_by(name: 'Topamax').id, name: 'Dialectical behavior therapy', description: 'emphasizes validation, or accepting uncomfortable thoughts, feelings and behaviors instead of struggling with them. By having an individual come to terms with the troubling thoughts, emotions or behaviors that they struggle with, change no longer appears impossible and they can work with their therapist to create a gradual plan for recovery', price: "90")
BrandName.create(name: 'Oxycontin', common_name: 'oxycodone', price: "325", description: 'used to treat constant pain that lasts for more than a few days', ndc_num: '59011-410-10', generic_option: true, alternative_option: true, side_effects: 'allergic reactions like skin rash, itching or hives, swelling of the face, lips, or tongue; breathing problems; confusion; signs and symptoms of low blood pressure like dizziness; feeling faint or lightheaded, falls; unusually weak or tired; trouble passing urine or change in the amount of urine; trouble swallowing; constipation; dry mouth; nausea, vomiting; tiredness')
Generic.create(brand_name_id: BrandName.find_by(name: 'Oxycontin').id, name: 'oxycodone', price: "262")
Alternative.create(brand_name_id: BrandName.find_by(name: 'Oxycontin').id, name: 'Medical Marijuana', description: 'Prescription drug overdoses are the leading cause of accidental death in the United States. Alternatives to opioids for the treatment of pain are necessary to address this issue. Cannabis can be an effective treatment for pain, greatly reduces the chance of dependence, and eliminates the risk of fatal overdose compared to opioid-based medications. Medical cannabis patients report that cannabis is just as effective, if not more, than opioid-based medications for pain', price: "100-250 is the average initial cost for prescription ranges between, average cost of refills ranges from $5-250 depending on size of order")

Term.create(name: 'Allowable Charge', description: 'sometimes known as the "allowed amount," "maximum allowable," and "usual, customary, and reasonable (UCR)" charge, this is the dollar amount considered by a health insurance company to be a reasonable charge for medical services or supplies based on the rates in your area')
# Term.create(name: , description: )
Term.create(name: 'Benefit', description: 'the amount payable by the insurance company to a plan member for medical costs')
Term.create(name: 'Benefit Level', description: 'the maximum amount that a health insurance company has agreed to pay for a covered benefit')
Term.create(name: 'Benefit Year', description: 'the 12-month period for which health insurance benefits are calculated, not necessarily coinciding with the calendar year. Health insurance companies may update plan benefits and rates at the beginning of the benefit year')
Term.create(name: 'Claim', description: "a request by a plan member, or a plan member's health care provider, for the insurance company to pay for medical services")
Term.create(name: 'Coinsurance', description: 'the amount you pay to share the cost of covered services after your deductible has been paid. The coinsurance rate is usually a percentage. For example, if the insurance company pays 80% of the claim, you pay 20%')
Term.create(name: 'Coordination of Benefits', description: 'a system used in group health plans to eliminate duplication of benefits when you are covered under more than one group plan. Benefits under the two plans usually are limited to no more than 100% of the claim')
Term.create(name: 'Copayment aka Copay', description: "one of the ways you share in your medical costs. You pay a flat fee for certain medical expenses (e.g., $10 for every visit to the doctor), while your insurance company pays the rest")
Term.create(name: 'Deductible', description: "the amount of money you must pay each year to cover eligible medical expenses before your insurance policy starts paying")
Term.create(name: 'Dependent', description: "any individual, either spouse or child, that is covered by the primary insured member’s plan")
Term.create(name: 'Drug Formulary', description: "a list of prescription medications covered by your plan")
Term.create(name: 'Effective Date', description: "the date on which a policyholder's coverage begins")
Term.create(name: 'Exclusion or Limitation', description: "any specific situation, condition, or treatment that a health insurance plan does not cover")
Term.create(name: 'Explanation of Benefits (EOB)', description: "the health insurance company's written explanation of how a medical claim was paid. It contains detailed information about what the company paid and what portion of the costs you are responsible for")
Term.create(name: 'Group Health Insurance', description: "a coverage plan offered by an employer or other organization that covers the individuals in that group and their dependents under a single policy")
Term.create(name: 'Health Maintenance Organization (HMO)', description: 'a health care financing and delivery system that provides comprehensive health care services for enrollees in a particular geographic area. HMOs require the use of specific, in-network plan providers')
Term.create(name: 'Health Savings Account (HSA)', description: "a personal savings account that allows participants to pay for medical expenses with pre-tax dollars. HSAs are designed to complement a special type of health insurance called an HSA-qualified high-deductible health plan (HDHP). HDHPs typically offer lower monthly premiums than traditional health plans. With an HSA-qualified HDHP, members can take the money they save on premiums and invest it in the HSA to pay for future qualified medical expenses")
Term.create(name: 'In-network Provider', description: "a health care professional, hospital, or pharmacy that is part of a health plan’s network of preferred providers. You will generally pay less for services received from in-network providers because they have negotiated a discount for their services in exchange for the insurance company sending more patients their way")
Term.create(name: 'Individual Health Insurance', description: "health insurance plans purchased by individuals to cover themselves and their families. Different from group plans, which are offered by employers to cover all of their employees")
Term.create(name: 'Medicaid', description: "a health insurance program created in 1965 that provides health benefits to low-income individuals who cannot afford Medicare or other commercial plans. Medicaid is funded by the federal and state governments, and managed by the states")
Term.create(name: 'Medicare', description: "the federal health insurance program that provides health benefits to Americans age 65 and older. Signed into law on July 30, 1965, the program was first available to beneficiaries on July 1, 1966 and later expanded to include disabled people under 65 and people with certain medical conditions. Medicare has two parts; Part A, which covers hospital services, and Part B, which covers doctor services")
Term.create(name: 'Medicare Supplement Plans', description: 'plans offered by private insurance companies to help fill the "gaps" in Medicare coverage')
Term.create(name: 'Network', description: 'the group of doctors, hospitals, and other health care providers that insurance companies contract with to provide services at discounted rates. You will generally pay less for services received from providers in your network')
Term.create(name: 'Out-of-Network Provider', description: "a health care professional, hospital, or pharmacy that is not part of a health plan's network of preferred providers. You will generally pay more for services received from out-of-network providers")
Term.create(name: 'Out-of-Pocket Maximum', description: "the most money you will pay during a year for coverage. It includes deductibles, copayments, and coinsurance, but is in addition to your regular premiums. Beyond this amount, the insurance company will pay all expenses for the remainder of the year")
Term.create(name: 'Payer', description: "the health insurance company whose plan pays to help cover the cost of your care. Also known as a carrier")
Term.create(name: 'Pre-existing Condition', description: "a health problem that has been diagnosed, or for which you have been treated, before buying a health insurance plan")
Term.create(name: 'Preferred Provider Organization (PPO)', description: "a health insurance plan that offers greater freedom of choice than HMO (health maintenance organization) plans. Members of PPOs are free to receive care from both in-network or out-of-network (non-preferred) providers, but will receive the highest level of benefits when they use providers inside the network")
Term.create(name: 'Premium', description: "the amount you or your employer pays each month in exchange for insurance coverage")
Term.create(name: 'Provider', description: "any person (i.e., doctor, nurse, dentist) or institution (i.e., hospital or clinic) that provides medical care")
Term.create(name: 'Rider', description: "coverage options that enable you to expand your basic insurance plan for an additional premium. A common example is a maternity rider")
Term.create(name: 'Underwriting', description: "the process by which health insurance companies determine whether to extend coverage to an applicant and/or set the policy's premium")
Term.create(name: 'Waiting Period', description: "the period of time that an employer makes a new employee wait before he or she becomes eligible for coverage under the company's health plan. Also, the period of time beginning with a policy's effective date during which a health plan may not pay benefits for certain pre-existing conditions")
Term.create(name: 'Consolidated Omnibus Budget Reconciliation Act (COBRA)', description: 'a health insurance program that allows eligible employees and their dependents the continued benefits of health insurance coverage when an employee loses their job or experiences a reduction of work hours')
Term.create(name: 'Primary Care Provider (PCP)', description: "a health care practitioner who sees people that have common medical problems. This person is most often a doctor. However, a PCP may be a physician assistant or a nurse practitioner. Your PCP is often involved in your care for a long time")
Term.create(name: 'Affordable Care Act (ACA)', description: "comprehensive health care reform law enacted in March 2010 (sometimes known as ACA, PPACA, or “Obamacare”), has 3 primary goals: Make affordable health insurance available to more people. The law provides consumers with subsidies (“premium tax credits”) that lower costs for households with incomes between 100% and 400% of the federal poverty level; Expand the Medicaid program to cover all adults with income below 138% of the federal poverty level. (Not all states have expanded their Medicaid programs.); Support innovative medical care delivery methods designed to lower the costs of health care generally")




